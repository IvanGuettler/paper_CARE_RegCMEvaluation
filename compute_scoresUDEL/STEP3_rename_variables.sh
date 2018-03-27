
CMD=/home1/regcm/regcmlibs_my_nco/nco-4.4.6/bin/ncrename
INP=/work/regcm/temp/test_CARE_001

${CMD} -v pre,pr ${INP}/2D_UDEL.nc 
${CMD} -v  rr,pr ${INP}/2D_EOBS.nc 
${CMD} -v tpr,pr ${INP}/2D_REGCM50km_GRL_ERAINT.nc
