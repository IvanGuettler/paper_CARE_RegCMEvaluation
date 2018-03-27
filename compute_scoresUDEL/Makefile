INPUT1=/home1/regcm/DISK_zemlja/OBS/UDEL/udel_1900_2010_precip_corr_v301.nc
INPUT2=/home1/regcm/DISK_zemlja/OBS/EOBS_v11/rr_0.25deg_reg_v11.0.nc
OUTPUT1=/work/regcm/temp/test_CARE_001/2D_UDEL.nc
OUTPUT2=/work/regcm/temp/test_CARE_001/2D_EOBS.nc
OUTPUT3=/work/regcm/temp/test_CARE_001/2D_REGCM50km_GRL_ERAINT.nc
SCRIPT1=STEP1_prepare_overCRO.sh
SCRIPT2=STEP2_prepare_overCRO_REGCM.sh
SCRIPT3=STEP3_rename_variables.sh
SCRIPT4=STEP4_same_mask.sh
GRID=UDEL_grid.txt

$(OUTPUT1) : $(INPUT1) $(INPUT2) $(GRID) $(SCRIPT1)
	bash $(SCRIPT1)

$(OUTPUT3) : $(GRID) $(SCRIPT2)
	bash $(SCRIPT2)

RENAME	   :
	bash $(SCRIPT3)

MASKED     :
	bash $(SCRIPT4)
