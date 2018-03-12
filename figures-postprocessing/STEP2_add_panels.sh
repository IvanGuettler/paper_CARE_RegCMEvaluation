#---------------------------
# Add panels on Taylor plots
#---------------------------
for file in Fig_07_precipTaylorSpace_CRO.png  Fig_09_tempTaylorSpace_CRO.png Fig_08_precipTaylorTime_CRO.png   Fig_10_tempTaylorTime_CRO.png; do

	convert -pointsize 55 -fill black -draw "text 60,50 'a)'" -draw "text 810,50 'b)'"  ${file} withPANELS_${file}

done


#---------------------------
# Add panels on 2D plots    
#---------------------------
#x1=10
#x2=880
#x3=1750
#x4=2650
#	y1=120
#	y2=740
#	y3=1360
#	y4=1980
#
#file=Fig_01_precipErrors.png
#	convert -pointsize 55 -fill black -draw "text $x1,$y1 'a)'" -draw "text $x2,$y1 'e)'"                                                     -draw "text $x3,$y1 'i)'" -draw "text $x4,$y1 'm)'"               	                                  -draw "text $x1,$y2 'b)'" -draw "text $x2,$y2 'f)'"                                                     -draw "text $x3,$y2 'j)'" -draw "text $x4,$y2 'n)'"                                                     -draw "text $x1,$y3 'c)'" -draw "text $x2,$y3 'g)'"                                                     -draw "text $x3,$y3 'k)'" -draw "text $x4,$y3 'o)'"                                                     -draw "text $x1,$y4 'd)'" -draw "text $x2,$y4 'h)'"                                                     -draw "text $x3,$y4 'l)'" -draw "text $x4,$y4 'p)'"                                                     ${file} withPANELS_${file}
#
#
#file=Fig_04_tempErrors.png
#	convert -pointsize 55 -fill black -draw "text $x1,$y1 'a)'" -draw "text $x2,$y1 'e)'"                                                     -draw "text $x3,$y1 'i)'"                                           	                                  -draw "text $x1,$y2 'b)'" -draw "text $x2,$y2 'f)'"                                                     -draw "text $x3,$y2 'j)'"                                                                               -draw "text $x1,$y3 'c)'" -draw "text $x2,$y3 'g)'"                                                     -draw "text $x3,$y3 'k)'"                                                                               -draw "text $x1,$y4 'd)'" -draw "text $x2,$y4 'h)'"                                                     -draw "text $x3,$y4 'l)'"                                                                               ${file} withPANELS_${file}

#---------------------------
# Add panels on CRCO&ROYA
#---------------------------
#x1=5
#x2=755
#	y1=45
#	y2=650
#file=Fig_11_CRCO_ROYA_T2m_R.png
#	convert -pointsize 50 -fill black -draw "text $x1,$y1 'a)'" -draw "text $x2,$y1 'c)'" -draw "text $x1,$y2 'b)'" -draw "text $x2,$y2 'd)'" ${file} withPANELS_${file}
