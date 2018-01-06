currentdate=`  date +%Y-%m-%d `

zip -r "migovecsurveydata-${currentdate}.zip" migovecsurveydata 

mv "migovecsurveydata-${currentdate}.zip" archive/
