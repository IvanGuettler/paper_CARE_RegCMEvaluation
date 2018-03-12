	convert   -resize   35% legend.png       legend_small.png
	convert   -resize   24% legend.png  legend_very_small.png

for REG in AL EA MD; do
#for file in Fig_02_precipBias_${REG}.png Fig_03_precip95P_${REG}.png Fig_05_tempBias_${REG}.png Fig_06_temp95P_${REG}.png; do
#	composite -geometry +700+50       legend_small.png ${file} withLEGEND_${file}
#done
for file in withPANELS_Fig_07_precipTaylorSpace_${REG}.png withPANELS_Fig_08_precipTaylorTime_${REG}.png withPANELS_Fig_09_tempTaylorSpace_${REG}.png withPANELS_Fig_10_tempTaylorTime_${REG}.png; do 
	rm -vf temp.png
	composite -geometry +1290+40        legend_very_small.png ${file}  temp.png
	composite -geometry  +550+40        legend_very_small.png temp.png withLEGEND_${file}
	rm -vf temp.png
done
done
