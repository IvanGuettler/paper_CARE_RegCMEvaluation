

INPUT1=/home1/regcm/DISK_zemlja/OBS/UDEL/udel_1900_2010_precip_corr_v301.nc
INPUT2=/home1/regcm/DISK_zemlja/OBS/EOBS_v11/rr_0.25deg_reg_v11.0.nc
OUTPUT=/work/regcm/temp/test_CARE_001/

LONs=13
LONe=20
LATs=42
LATe=47
D1=1989-03-01
D2=2008-11-30

	cdo -f nc -setday,15 -monmean -seldate,$D1,$D2 -sellonlatbox,$LONs,$LONe,$LATs,$LATe                                          ${INPUT1} ${OUTPUT}/2D_UDEL.nc
	cdo -f nc -sellonlatbox,$LONs,$LONe,$LATs,$LATe -remapnn,UDEL_grid.txt -gridboxmean,2,2 -setday,15 -monmean -seldate,$D1,$D2  ${INPUT2} ${OUTPUT}/2D_EOBS.nc
