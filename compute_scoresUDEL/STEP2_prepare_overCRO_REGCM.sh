

INPUT1=/home1/regcm/DISK_zemlja/OBS/UDEL/
OUTPUT=/work/regcm/temp/test_CARE_001/2D_REGCM50km_MIT_ERAINT.nc

LONs=13
LONe=20
LATs=42
LATe=47
D1=1989-03-01
D2=2008-11-30

	cdo -f nc -setday,15 -monmean -seldate,$D1,$D2 -sellonlatbox,$LONs,$LONe,$LATs,$LATe ${INPUT1} ${OUTPUT}/2D_UDEL.nc
