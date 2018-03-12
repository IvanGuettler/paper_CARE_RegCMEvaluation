#---------------------------
# Add panels on 2D plots    
#---------------------------
x1=10
x2=880
x3=1750
x4=2650
	y1=120
	y2=740
	y3=1360
	y4=1980

file=Fig_01_precipErrors_50km.png
	convert -pointsize 55 -fill black -draw "text $x1,$y1 'a)'" -draw "text $x2,$y1 'e)'"                                                     -draw "text $x3,$y1 'i)'" -draw "text $x4,$y1 'm)'"               	                                  -draw "text $x1,$y2 'b)'" -draw "text $x2,$y2 'f)'"                                                     -draw "text $x3,$y2 'j)'" -draw "text $x4,$y2 'n)'"                                                     -draw "text $x1,$y3 'c)'" -draw "text $x2,$y3 'g)'"                                                     -draw "text $x3,$y3 'k)'" -draw "text $x4,$y3 'o)'"                                                     -draw "text $x1,$y4 'd)'" -draw "text $x2,$y4 'h)'"                                                     -draw "text $x3,$y4 'l)'" -draw "text $x4,$y4 'p)'"                                                     ${file} withPANELS_${file}


file=Fig_04_tempErrors_50km.png
	convert -pointsize 55 -fill black -draw "text $x1,$y1 'a)'" -draw "text $x2,$y1 'e)'"                                                     -draw "text $x3,$y1 'i)'"                                           	                                  -draw "text $x1,$y2 'b)'" -draw "text $x2,$y2 'f)'"                                                     -draw "text $x3,$y2 'j)'"                                                                               -draw "text $x1,$y3 'c)'" -draw "text $x2,$y3 'g)'"                                                     -draw "text $x3,$y3 'k)'"                                                                               -draw "text $x1,$y4 'd)'" -draw "text $x2,$y4 'h)'"                                                     -draw "text $x3,$y4 'l)'"                                                                               ${file} withPANELS_${file}
