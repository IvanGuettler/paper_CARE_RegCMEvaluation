clear all
close all
clc

pkg load netcdf

%-----------
% Read data
%-----------

DIR='/home/guettler/DIR_bonus_disk/DATA_2017_CARE1/DATA_2017_Kotlarski_CARE1/'

%------------------------------------------------------------------------------------------->12.5km

t_GCM_11_GRL=squeeze(ncread([DIR,'t/ensmean_t_RegCM-11-Grell_CRO.nc'],'tas'));
t_GCM_11_MIT=squeeze(ncread([DIR,'t/ensmean_t_RegCM-11-MIT_CRO.nc'],'tas'));
t_ERA_11_GRL=squeeze(ncread([DIR,'t/t_RegCM-11-ERA-Grell_CRO.nc'],'tas'));
t_ERA_11_MIT=squeeze(ncread([DIR,'t/t_RegCM-11-ERA-MIT_CRO.nc'],'tas'));

r_GCM_11_GRL=squeeze(ncread([DIR,'rr/ensmean_rr_RegCM-11-Grell_unitsMMD_CRO.nc'],'pr'));
r_GCM_11_MIT=squeeze(ncread([DIR,'rr/ensmean_rr_RegCM-11-MIT_unitsMMD_CRO.nc'],'pr'));
r_ERA_11_GRL=squeeze(ncread([DIR,'rr/rr_RegCM-11-ERA-Grell_unitsMMD_CRO.nc'],'pr'));
r_ERA_11_MIT=squeeze(ncread([DIR,'rr/rr_RegCM-11-ERA-MIT_unitsMMD_CRO.nc'],'pr'));

%------------------------------------------------------------------------------------------->50km

t_GCM_44_GRL=squeeze(ncread([DIR,'t/ensmean_t_RegCM-44-Grell_CRO.nc'],'tas'));
t_GCM_44_MIT=squeeze(ncread([DIR,'t/ensmean_t_RegCM-44-MIT_CRO.nc'],'tas'));
t_ERA_44_GRL=squeeze(ncread([DIR,'t/t_RegCM-44-ERA-Grell_CRO.nc'],'tas'));
t_ERA_44_MIT=squeeze(ncread([DIR,'t/t_RegCM-44-ERA-MIT_CRO.nc'],'tas'));

r_GCM_44_GRL=squeeze(ncread([DIR,'rr/ensmean_rr_RegCM-44-Grell_unitsMMD_CRO.nc'],'pr'));
r_GCM_44_MIT=squeeze(ncread([DIR,'rr/ensmean_rr_RegCM-44-MIT_unitsMMD_CRO.nc'],'pr'));
r_ERA_44_GRL=squeeze(ncread([DIR,'rr/rr_RegCM-44-ERA-Grell_unitsMMD_CRO.nc'],'pr'));
r_ERA_44_MIT=squeeze(ncread([DIR,'rr/rr_RegCM-44-ERA-MIT_unitsMMD_CRO.nc'],'pr'));

%-----------
% Constants
%-----------
[ Nx, Ny, Nt]=size(r_ERA_11_GRL);
[cNx,cNy,cNt]=size(r_ERA_44_GRL);
style{1}="r o";
style{2}="b v";
style{3}="g s";
style{4}="k d";

%-----------
% Plot data
%-----------
for FIG=[1 2]; 
f=figure(FIG)
set(f,'outerposition',[276   225   730   799],'position',[286   257   710   664]);

	subplot(2,2,1)
		plot(reshape(squeeze(t_GCM_11_GRL(:,:,1)),Nx*Ny,1),reshape(squeeze(r_GCM_11_GRL(:,:,1)),Nx*Ny,1),style{1}); hold on
		plot(reshape(squeeze(t_GCM_11_MIT(:,:,1)),Nx*Ny,1),reshape(squeeze(r_GCM_11_MIT(:,:,1)),Nx*Ny,1),style{2}); hold on
		plot(reshape(squeeze(t_ERA_11_GRL(:,:,1)),Nx*Ny,1),reshape(squeeze(r_ERA_11_GRL(:,:,1)),Nx*Ny,1),style{3}); hold on
		plot(reshape(squeeze(t_ERA_11_MIT(:,:,1)),Nx*Ny,1),reshape(squeeze(r_ERA_11_MIT(:,:,1)),Nx*Ny,1),style{4}); 
			xlabel('dT2m (deg C)'); ylabel('dR (mm/d)')
			xlim([-7 4]); ylim([-5 15])
			title('12.5km DJF')
	subplot(2,2,3)
		plot(reshape(squeeze(t_GCM_11_GRL(:,:,3)),Nx*Ny,1),reshape(squeeze(r_GCM_11_GRL(:,:,3)),Nx*Ny,1),style{1}); hold on
		plot(reshape(squeeze(t_GCM_11_MIT(:,:,3)),Nx*Ny,1),reshape(squeeze(r_GCM_11_MIT(:,:,3)),Nx*Ny,1),style{2}); hold on
		plot(reshape(squeeze(t_ERA_11_GRL(:,:,3)),Nx*Ny,1),reshape(squeeze(r_ERA_11_GRL(:,:,3)),Nx*Ny,1),style{3}); hold on
		plot(reshape(squeeze(t_ERA_11_MIT(:,:,3)),Nx*Ny,1),reshape(squeeze(r_ERA_11_MIT(:,:,3)),Nx*Ny,1),style{4}); 
			xlabel('T2m (deg C)'); ylabel('R (mm/d)')
			xlim([-7 4]); ylim([-5 15])
			title('12.5km JJA')
	subplot(2,2,2)
		plot(reshape(squeeze(t_GCM_44_GRL(:,:,1)),cNx*cNy,1),reshape(squeeze(r_GCM_44_GRL(:,:,1)),cNx*cNy,1),style{1}); hold on
		plot(reshape(squeeze(t_GCM_44_MIT(:,:,1)),cNx*cNy,1),reshape(squeeze(r_GCM_44_MIT(:,:,1)),cNx*cNy,1),style{2}); hold on
		plot(reshape(squeeze(t_ERA_44_GRL(:,:,1)),cNx*cNy,1),reshape(squeeze(r_ERA_44_GRL(:,:,1)),cNx*cNy,1),style{3}); hold on
		plot(reshape(squeeze(t_ERA_44_MIT(:,:,1)),cNx*cNy,1),reshape(squeeze(r_ERA_44_MIT(:,:,1)),cNx*cNy,1),style{4}); 
			xlabel('dT2m (deg C)'); ylabel('dR (mm/d)')
			xlim([-7 4]); ylim([-5 15])
			title('50km DJF')
	subplot(2,2,4)
		plot(reshape(squeeze(t_GCM_44_GRL(:,:,3)),cNx*cNy,1),reshape(squeeze(r_GCM_44_GRL(:,:,3)),cNx*cNy,1),style{1}); hold on
		plot(reshape(squeeze(t_GCM_44_MIT(:,:,3)),cNx*cNy,1),reshape(squeeze(r_GCM_44_MIT(:,:,3)),cNx*cNy,1),style{2}); hold on
		plot(reshape(squeeze(t_ERA_44_GRL(:,:,3)),cNx*cNy,1),reshape(squeeze(r_ERA_44_GRL(:,:,3)),cNx*cNy,1),style{3}); hold on
		plot(reshape(squeeze(t_ERA_44_MIT(:,:,3)),cNx*cNy,1),reshape(squeeze(r_ERA_44_MIT(:,:,3)),cNx*cNy,1),style{4}); 
			xlabel('T2m (deg C)'); ylabel('R (mm/d)')
			xlim([-7 4]); ylim([-5 15])
			title('50km JJA')
	
end
