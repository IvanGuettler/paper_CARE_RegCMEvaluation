
	INPT=/home1/regcm/DISK_WORK/temp/test_CARE_001

	# Prepare timeseries of area averaged, and area-wide temporal averaged
	for SRC in UDEL EOBS REGCM50km_GRL; do
		cdo splitseas -fldmean   ${INPT}/2D_${SRC}_masked.nc ${INPT}/2D_${SRC}_masked_CRO_timeseries_
		cdo splitseas -yseasmean ${INPT}/2D_${SRC}_masked.nc ${INPT}/2D_${SRC}_masked_CRO_maps_
	done

	rm -vf ${INPT}/*MAM*nc
	rm -vf ${INPT}/*SON*nc
	mkdir -p ${INPT}/RESULTS
	# Metric 1: fldcor
	for SRC in UDEL EOBS; do
	for SES in DJF  JJA ; do
	cdo fldcor ${INPT}/2D_REGCM50km_GRL_masked_CRO_maps_${SES}.nc ${INPT}/2D_${SRC}_masked_CRO_maps_${SES}.nc ${INPT}/RESULTS/fldcor_${SES}_REGCM50km_GRLvs${SRC}.nc
	done
	done
	# Metric 2: fldstd
	for SRC in REGCM50km_GRL UDEL EOBS; do
	for SES in DJF  JJA ; do
	cdo fldstd1 ${INPT}/2D_${SRC}_masked_CRO_maps_${SES}.nc ${INPT}/RESULTS/fldstd_${SRC}_masked_CRO_maps_${SES}.nc
	done
	done
	# Metric 3: timcor
	for SRC in UDEL EOBS; do
	for SES in DJF  JJA ; do
	cdo timcor ${INPT}/2D_REGCM50km_GRL_masked_CRO_timeseries_${SES}.nc ${INPT}/2D_${SRC}_masked_CRO_timeseries_${SES}.nc ${INPT}/RESULTS/timcor_${SES}_REGCM50km_GRLvs${SRC}.nc
	done
	done
	# Metric 4: timstd
	for SRC in REGCM50km_GRL UDEL EOBS; do
	for SES in DJF  JJA ; do
	cdo timstd1 ${INPT}/2D_${SRC}_masked_CRO_timeseries_${SES}.nc ${INPT}/RESULTS/timstd_${SRC}_masked_CRO_timeseries_${SES}.nc
	done
	done
	# Metric 5: RIAV
	for SRC in UDEL EOBS; do
	for SES in DJF  JJA ; do
	cdo div ${INPT}/RESULTS/timstd_REGCM50km_GRL_masked_CRO_timeseries_${SES}.nc ${INPT}/RESULTS/timstd_${SRC}_masked_CRO_timeseries_${SES}.nc ${INPT}/RESULTS/RIAV_REGCM50km_GRLvs${SRC}_masked_CRO_timeseries_${SES}.nc
	done
	done
	# Metric 5: RSV
	for SRC in UDEL EOBS; do
	for SES in DJF  JJA ; do
	cdo div ${INPT}/RESULTS/fldstd_REGCM50km_GRL_masked_CRO_maps_${SES}.nc ${INPT}/RESULTS/fldstd_${SRC}_masked_CRO_maps_${SES}.nc ${INPT}/RESULTS/RSV_REGCM50km_GRLvs${SRC}_masked_CRO_maps_${SES}.nc
	done
	done
