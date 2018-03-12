
rm -rfv tim*png fld*png

for VAR in t rr; do
	for MES in tim fld; do
		for REG in CRO MD EA AL; do 
			for SEAS in DJF JJA; do
			sshpass -p "1q23a4" scp -r regcm@radar.dhz.hr:./public_html/tomislav/AFTER_28Jan/Kotlarski/ALLinONE/DHMZ_2018//${MES}_${VAR}_${REG}_${SEAS}.png .
			done
			montage ${MES}_${VAR}_${REG}_DJF.png -tile 2x1 -geometry 750x600 ${MES}_${VAR}_${REG}_JJA.png ${MES}_${VAR}_${REG}.png
			rm -rfv ${MES}_${VAR}_${REG}_DJF.png ${MES}_${VAR}_${REG}_JJA.png
		done
	done
done

for REG in CRO MD EA AL; do

       mv fld_rr_${REG}.png Fig_07_precipTaylorSpace_${REG}.png 
       mv tim_rr_${REG}.png Fig_08_precipTaylorTime_${REG}.png 
       mv fld_t_${REG}.png  Fig_09_tempTaylorSpace_${REG}.png 
       mv tim_t_${REG}.png  Fig_10_tempTaylorTime_${REG}.png 

done
