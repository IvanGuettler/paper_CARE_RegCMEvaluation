
rm -rfv *BIAS*png *PCTL95*png

for VAR in t rr; do
	for MES in BIAS PCTL95; do
		for REG in CRO MD EA AL; do 
	sshpass -p "1q23a4" scp -r regcm@radar.dhz.hr:./public_html/tomislav/AFTER_28Jan/Kotlarski/ALLinONE/DHMZ_2018/${VAR}_${MES}_${REG}.png .
		done
	done
done

for REG in CRO MD EA AL; do

	mv rr_BIAS_${REG}.png   Fig_02_precipBias_${REG}.png
	mv rr_PCTL95_${REG}.png Fig_03_precip95P_${REG}.png
	mv t_BIAS_${REG}.png    Fig_05_tempBias_${REG}.png
	mv t_PCTL95_${REG}.png  Fig_06_temp95P_${REG}.png

done
