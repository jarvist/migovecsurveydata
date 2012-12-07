mencoder mf://*.png -o /dev/null -ovc lavc -lavcopts "vcodec=mpeg4:vpass=1:vbitrate=3840000:mbd=2:keyint=132:v4mv:vqmin=3:lumi_mask=0.07:dark_mask=0.2:mpeg_quant:scplx_mask=0.1:tcplx_mask=0.1:naq"

mencoder mf://*.png -o test_lavc.avi -ovc lavc -lavcopts "vcodec=mpeg4:vpass=2:vbitrate=3840000:mbd=2:keyint=132:v4mv:vqmin=3:lumi_mask=0.07:dark_mask=0.2:mpeg_quant:scplx_mask=0.1:tcplx_mask=0.1:naq"

