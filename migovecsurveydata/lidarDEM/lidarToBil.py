#!/usr/bin/env python2.7
# coding=UTF-8

# Script for converting Slovenian lidar data to .bil format for reading by
# survex. Operates in one of two modes:
#
#  Standard mode
#  =============
#
#   - Interpolate data from D96TM coordinate system onto a regular lat-long
#     grid.
#   - See changeGrid function for the details of how this is done.
#   - Works with vanilla survex.
#
#  'Advanced' mode
#  ===============
#
#   - Leave data in original coordinate system but define this in the .hdr file
#   - Saves data as 32-bit integers (default is 16-bit) and multiplies heights
#     by 100 so that we get 1cm precision rather than 1m.
#   - Requires modification of survex to correctly read the coordinate
#     system specification, deal with the 32-bit integers and correctly handle
#     the new scale.
#   - Enable with the --modbil switch
#
# The script requires that you have the lidar files together in one folder
# Pass the folder location to the script as an argument

import math
import numpy as np
import pyproj
import matplotlib.pyplot as plt
import scipy.interpolate as interpolate
import os
import time
import multiprocessing as mp
import pandas
import argparse

# Handle command line arguments.
parser = argparse.ArgumentParser()
parser.add_argument('dir',type=str)
parser.add_argument('--plot',action='store_true')
parser.add_argument('--modbil',action='store_true')
args = parser.parse_args()

# Define coordinate systems
projStrings = {'MGI 1901': "+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=5500000 +y_0=0 +ellps=bessel +towgs84=550.499,164.116,475.142,5.80967,2.07902,-11.62386,0.99999445824 +units=m",
               'D48GK': "+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=bessel +towgs84=550.499,164.116,475.142,5.80967,2.07902,-11.62386,0.99999445824 +units=m",
               'D96TM': "+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs",
               'data': "+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=50000 +y_0=-5000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs",
               'WGS84': "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs",
               'WGS842': "+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs"}

# Function for reading list of DEM block files
def readFiles(fileList):
	blockList = []
	#p = mp.Pool(4)
	#p.map(
	for f in fileList:
		print("Reading file "+f)
		blockList.append(np.array(pandas.read_csv(f,header=None,sep=';')))
		#blockList.append(np.genfromtxt(f,delimiter=';'))
		
		uniqueX = np.unique(blockList[-1][:,0])
		uniqueY = np.unique(blockList[-1][:,1])
		blockShape = (uniqueX.shape[0],uniqueY.shape[0],3)
		
		assert blockShape[0]*blockShape[1] == blockList[-1].shape[0],"Data file "+str(f)+" contains weirdly arranged data..."
		
		# block indices now block[x,y,i]
		blockList[-1] = blockList[-1].reshape(blockShape)
		#print(blockShape)
		
		if(len(blockList) > 1):
			assert blockList[-1].shape == blockList[-2].shape,"Blocks have different shape!"
	
	return blockList


def changeGrid(inCS,outCS,X,Y,Z):
	"""Interpolates data onto a new grid
	
	Procedure:
		1. Project corners of the original grid into the new coordinate system.
		2. Create a new regular grid in the new coordinate system that fits
		   inside the old grid.
		3. Project the coordinates of the new grid back into the old coordinate
		   system.
	
	Args:
		inCS,outCS: Input and output coordinate systems as pyproj Proj objects
		X,Y:        Numpy arrays of shape (M,) and (N,) defining a grid in the
		            input coordinate system.
		Z:          Numpy array of shape (M,N) defining height at each
		            grid point.
	Returns:
	    xNew,yNew:  Arrays of shape (M,N) specifying coordinates of a new,
	                irregular grid in the output coordinate system.
	    zNew:       Array of shape (M,N) defining height at each grid point.
	"""
	
	corners = np.meshgrid(np.array([X[0],X[-1]]),
	                      np.array([Y[0],Y[-1]]))
	#print(corners)
	projCorns = pyproj.transform(inCS,outCS,x=corners[0],y=corners[1])
	#print(projCorns)

	xMinNew = np.max(projCorns[0].transpose()[0])
	xMaxNew = np.min(projCorns[0].transpose()[1])
	yMinNew = np.max(projCorns[1][0])
	yMaxNew = np.min(projCorns[1][1])
	
	# Make the grid smaller by a safety factor to make sure interpolation works...
	sf = 0.1
	xMinNew = xMinNew + 0.1*(xMaxNew-xMinNew)
	xMaxNew = xMaxNew - 0.1*(xMaxNew-xMinNew)
	yMinNew = yMinNew + 0.1*(yMaxNew-yMinNew)
	yMaxNew = yMaxNew - 0.1*(yMaxNew-yMinNew)

	#print(xMinNew,xMaxNew)
	xNew = np.linspace(xMinNew,xMaxNew,Z.shape[0])
	yNew = np.linspace(yMinNew,yMaxNew,Z.shape[1])
	
	#print(xNew)
	#print(yNew)
	
	xMesh,yMesh = np.meshgrid(xNew,yNew,indexing='ij')

	newGridUnProj = pyproj.transform(outCS,inCS,x=xMesh,y=yMesh)

	# Interpolate from original grid onto new grid in original coord system
	print("Interpolating data onto new grid")
	startTime = time.time()
	interpFunc = interpolate.RectBivariateSpline(X,Y,Z)
	newGridUnProj = np.array([newGridUnProj[0].flatten(),newGridUnProj[1].flatten()])
	#print(newGridUnProj.shape)

	#print(newGridUnProj[0][:10])
	#print(newGridUnProj[1][:10])

	nChunks = 1000
	chunkSize = newGridUnProj[0].shape[0] / nChunks
	#print(chunkSize)
	chunkList = []

	interp = lambda i:interpFunc(newGridUnProj[0][i*chunkSize:(i+1)*chunkSize],
			                     newGridUnProj[1][i*chunkSize:(i+1)*chunkSize],
			                     grid=False)

	#p = mp.Pool(4)
	#chunkList = p.map(interp,range(nChunks))
	chunkList = map(interp,range(nChunks))

	if(newGridUnProj[0].shape[0] % nChunks != 0):
		chunkList.append(interpFunc(newGridUnProj[0][nChunks*chunkSize:],
			                        newGridUnProj[1][nChunks*chunkSize:],
			                        grid=False))

	zNew = np.concatenate(chunkList)
	#print(interpData.shape)
	zNew = zNew.reshape(Z.shape)
	print("Finished interpolating data onto new grid, took "+str(time.time()-startTime)+" s")
	
	return xNew,yNew,zNew

# Read DEM files in directory specified
if(os.path.isfile('lidar.npz')):
	npzFile = np.load('lidar.npz')
	npzKeys = npzFile.keys()
	npzKeys.sort()
else:
	npzKeys = []

ascList = [ i for i in os.listdir(args.dir) if i[:2] == 'TM' and i[-4:] == '.asc' ]
if(len(ascList) != 0): ascList.sort()

print("Found "+str(len(ascList))+" .asc files in directory "+args.dir)

startTime = time.time()
useNPY = True
if(len(npzKeys) == len(ascList)):
	for i in zip(npzKeys,ascList):
		if(i[0] != i[1]):
			useNPY = False
			break
else:
	useNPY = False

if(useNPY):
	print('Loading from .npz file')
	blockList = [ npzFile[i] for i in npzKeys ]
else:
	print('Loading from original .asc files')
	blockList = readFiles(ascList)
	
	# Store blocks for future use
	np.savez('lidar.npz',**{f:b for f,b in zip(ascList,blockList)})

print("Reading files took "+str(time.time()-startTime)+" s")

xMin = min([ np.min(i[:,0,0]) for i in blockList ])
xMax = max([ np.max(i[:,0,0]) for i in blockList ])
yMin = min([ np.min(i[0,:,1]) for i in blockList ])
yMax = max([ np.max(i[0,:,1]) for i in blockList ])

# Grid is 1m so xMax-xMin is no. of x values
nx = int(xMax-xMin+1)
ny = int(yMax-yMin+1)

X = np.linspace(xMin,xMax,nx)
Y = np.linspace(yMin,yMax,ny)
Z = np.zeros((nx,ny))

# Load each block into the main array
for block in blockList:
	xMinBlock = block[0,0,0]
	yMinBlock = block[0,0,1]
	
	xInd = int(xMinBlock - xMin)
	yInd = int(yMinBlock - yMin)
	
	#print(xInd,yInd)
	
	Z[xInd:xInd+block.shape[0],yInd:yInd+block.shape[1]] = block[:,:,2]

# Set input and output coordinate systems
inCSString = projStrings['D96TM']
if(args.modbil): outCSString = projStrings['D96TM']
else:            outCSString = projStrings['WGS84']

inCS =  pyproj.Proj(inCSString)
outCS = pyproj.Proj(outCSString)

# If we're using my modified bil format then no need to change coordinate systems
# Otherwise do the slow interpolation onto a new grid
if(args.modbil): xNew,yNew,zNew = X,Y,Z
else:            xNew,yNew,zNew = changeGrid(inCS,outCS,X,Y,Z)

#print(xNew)
#print(yNew)

if(args.plot):
	fig = plt.figure()
	ax = fig.add_subplot(121)
	ax.imshow(data,origin='bottom left',interpolation='none')#,cmap='plasma')

	ax = fig.add_subplot(122)
	ax.imshow(interpData,origin='bottom left',interpolation='none')#,cmap='plasma')
	plt.show()

noData = -32768
if(args.modbil):
	# If modified survex store heights as 32 bit integers, multiply original
	# floats by 100 to get cm precision
	zDim = 0.01
	nBits = 32
else:
	zDim = 1.0
	nBits = 16

print("Writing .bil file")
with open('lidar.bil','wb') as f:
	#zNew = 2000.0*np.sin(math.pi*xi/(xRange[-1]-xRange[0]))#*np.sin(math.pi*yi/(yRange[-1]-yRange[0]))
	zFlipped = np.fliplr(zNew)#[::-1]
	zFlat = zFlipped.flatten('F')
	#zFlat = np.zeros(size)
	if(args.modbil): zInt = np.int32(zFlat/zDim)
	else:            zInt = np.int16(zFlat/zDim)
	#print(zInt[:10])
	zInt[zInt < -100./zDim] = noData
	zInt[zInt > 2500./zDim] = noData
	#print(np.max(zInt))
	#print(zInt[:10])
	zByte = zInt.tobytes()
	#print(zByte[:10])
	f.write(zByte)

print("Writing header file")
with open('lidar.hdr','w') as f:
	f.write('NROWS {:d}\n'.format(zNew.shape[0]))
	f.write('NCOLS {:d}\n'.format(zNew.shape[1]))
	f.write('NBANDS 1\n')
	f.write('NBITS {:d}\n'.format(nBits))
	f.write('NODATA {:d}\n'.format(noData))
	f.write('ULXMAP {:.10f}\n'.format(xNew[0]))
	f.write('ULYMAP {:.10f}\n'.format(yNew[-1]))
	#f.write('XDIM {:.10f}\n'.format((xNew[1]-xNew[0])*math.pi/180.))
	#f.write('YDIM {:.10f}\n'.format((yNew[1]-yNew[0])*math.pi/180.))
	f.write('XDIM {:.10f}\n'.format((xNew[1]-xNew[0])))
	f.write('YDIM {:.10f}\n'.format((yNew[1]-yNew[0])))
	if(args.modbil):
		f.write('ZDIM {:.10f}\n'.format(zDim))
		f.write('PROJ4 '+outCSString+'\n')


