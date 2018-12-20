
pkg load netcdf

DIR='/home/guettler/DIR_bonus_disk/DATA_2017_CARE1/DATA_2017_Kotlarski_CARE1/'
t_GCM_11_GRL=ncread([DIR,'t/ensmean_t_RegCM-11-Grell_CRO.nc'],'tas');
t_GCM_11_MIT=ncread([DIR,'t/ensmean_t_RegCM-11-MIT_CRO.nc'],'tas');
t_ERA_11_GRL=ncread([DIR,'t/t_RegCM-11-ERA-Grell_CRO.nc'],'tas');
t_ERA_11_MIT=ncread([DIR,'t/t_RegCM-11-ERA-MIT_CRO.nc'],'tas');

