#---------------------------
# Add panels on Taylor plots
#---------------------------
for REG  in AL EA MD; do 
for file in Fig_07_precipTaylorSpace_${REG}.png  Fig_09_tempTaylorSpace_${REG}.png Fig_08_precipTaylorTime_${REG}.png   Fig_10_tempTaylorTime_${REG}.png; do

	convert -pointsize 55 -fill black -draw "text 60,50 'a)'" -draw "text 810,50 'b)'"  ${file} withPANELS_${file}

done
done
