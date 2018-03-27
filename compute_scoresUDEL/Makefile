INPUT1=/home1/regcm/DISK_zemlja/OBS/UDEL/udel_1900_2010_precip_corr_v301.nc
INPUT2=/home1/regcm/DISK_zemlja/OBS/EOBS_v11/rr_0.25deg_reg_v11.0.nc
OUTPUT1=/work/regcm/temp/test_CARE_001/2D_UDEL.nc
OUTPUT2=/work/regcm/temp/test_CARE_001/2D_EOBS.nc
SCRIPT=STEP1_prepare_overCRO.sh

$(OUTPUT1) : $(INPUT1) $(INPUT2) $(SCRIPT)
	bash $(SCRIPT)
