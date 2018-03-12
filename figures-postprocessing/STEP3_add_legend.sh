

#for file in Fig_02_precipBias_CRO.png Fig_03_precip95P_CRO.png Fig_05_tempBias_CRO.png Fig_06_temp95P_CRO.png; do
#
#	convert   -resize  35% legend.png legend_small.png
##	composite -gravity NorthEast      legend_small.png ${file} withLEGEND_${file}
#	composite -geometry +700+50       legend_small.png ${file} withLEGEND_${file}
#
#done

for file in withPANELS_Fig_07_precipTaylorSpace_CRO.png withPANELS_Fig_08_precipTaylorTime_CRO.png withPANELS_Fig_09_tempTaylorSpace_CRO.png withPANELS_Fig_10_tempTaylorTime_CRO.png; do 


	rm -vf temp.png
	convert   -resize   24% legend.png  legend_very_small.png
	composite -geometry +1290+40        legend_very_small.png ${file}  temp.png
	composite -geometry  +550+40        legend_very_small.png temp.png withLEGEND_${file}
	rm -vf temp.png

done


#file=withPANELS_Fig_11_CRCO_ROYA_T2m_R.png
#
#	composite -geometry +1150+150        legend_small.png ${file} withLEGEND_${file}
#
