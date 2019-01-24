clear all
close all
clc

pkg load netcdf

%-----------
% Read data
%-----------

DIR='/home/guettler/DIR_bonus_disk/DATA_2017_CARE1/DATA_2017_Kotlarski_CARE1/'
AREAtxt{1}='CRO';
AREAtxt{2}='AL';
AREAtxt{3}='MD';
AREAtxt{4}='EA';

for AREA=[1:1];

%------------------------------------------------------------------------------------------->EOBS
r_EOBS_11=squeeze(ncread([DIR,'EOBS/rr_EOBS-1971-2000_',AREAtxt{AREA},'.nc'],'rr'));
r_EOBS_44=squeeze(ncread([DIR,'EOBS/rr_EOBS-1971-2000_coarse_',AREAtxt{AREA},'.nc'],'rr'));


%------------------------------------------------------------------------------------------->12.5km+EOBS na full

r_ERA_11_GRL=squeeze(ncread([DIR,'rr/rr_RegCM-11-ERA-Grell_unitsMMD_',AREAtxt{AREA},'.nc'],'pr'))+r_EOBS_11;
r_ERA_11_MIT=squeeze(ncread([DIR,'rr/rr_RegCM-11-ERA-MIT_unitsMMD_',AREAtxt{AREA},'.nc'],'pr'))  +r_EOBS_11;

rc_ERA_11_GRL=squeeze(ncread([DIR,'prc/prc_RegCM-11-ERA-Grell_MMD_coarse_int_',AREAtxt{AREA},'.nc'],'prc'));
rc_ERA_11_MIT=squeeze(ncread([DIR,'prc/prc_RegCM-11-ERA-MIT_MMD_coarse_int_',AREAtxt{AREA},'.nc'],'prc'))  ;

%------------------------------------------------------------------------------------------->50km+EOBS na full

r_ERA_44_GRL=squeeze(ncread([DIR,'rr/rr_RegCM-44-ERA-Grell_unitsMMD_',AREAtxt{AREA},'.nc'],'pr'))+r_EOBS_44;
r_ERA_44_MIT=squeeze(ncread([DIR,'rr/rr_RegCM-44-ERA-MIT_unitsMMD_',AREAtxt{AREA},'.nc'],'pr'))  +r_EOBS_44;

rc_ERA_44_GRL=squeeze(ncread([DIR,'prc/prc_RegCM-44-ERA-Grell_int_',AREAtxt{AREA},'.nc'],'prcv'));
rc_ERA_44_MIT=squeeze(ncread([DIR,'prc/prc_RegCM-44-ERA-MIT_int_',AREAtxt{AREA},'.nc'],'prcv'))  ;



%-----------
% Constants
%-----------
[ Nx, Ny, Nt]=size(r_ERA_11_GRL);
[cNx,cNy,cNt]=size(r_ERA_44_GRL);
style{1}="r o";
style{2}="b v";
style{3}="g s";
style{4}="k d";
FUTA=7;
tip=1;

%-----------
% Plot data
%-----------
loc_Q_x=[-10   10  ];
loc_Q_y=[ 12   12  ];
f=figure(1); set(f,'outerposition',[276   225   730   799],'position',[286   257   710   664]);

	subplot(2,2,1)
		plot(reshape(squeeze(r_ERA_11_GRL(:,:,1)),Nx*Ny,1),reshape(squeeze(rc_ERA_11_GRL(:,:,1)),Nx*Ny,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(r_ERA_11_MIT(:,:,1)),Nx*Ny,1),reshape(squeeze(rc_ERA_11_MIT(:,:,1)),Nx*Ny,1),style{4},'markersize',tip); 
			xlabel('R (mm/d)'); ylabel('Rconv (mm/d)')
			xlim([0 15]); ylim([0 15])
			title('12.5km DJF')
	subplot(2,2,3)
		plot(reshape(squeeze(r_ERA_11_GRL(:,:,3)),Nx*Ny,1),reshape(squeeze(rc_ERA_11_GRL(:,:,3)),Nx*Ny,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(r_ERA_11_MIT(:,:,3)),Nx*Ny,1),reshape(squeeze(rc_ERA_11_MIT(:,:,3)),Nx*Ny,1),style{4},'markersize',tip); 
			xlabel('R (mm/d)'); ylabel('Rconv (mm/d)')
			xlim([0 15]); ylim([0 15])
			title('12.5km JJA')

	subplot(2,2,2)
		plot(reshape(squeeze(r_ERA_44_GRL(:,:,1)),cNx*cNy,1),reshape(squeeze(rc_ERA_44_GRL(:,:,1)),cNx*cNy,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(r_ERA_44_MIT(:,:,1)),cNx*cNy,1),reshape(squeeze(rc_ERA_44_MIT(:,:,1)),cNx*cNy,1),style{4},'markersize',tip); 
			xlabel('R (mm/d)'); ylabel('Rconv (mm/d)')
			xlim([0 15]); ylim([0 15])
			title('50km DJF')
	subplot(2,2,4)
		plot(reshape(squeeze(r_ERA_44_GRL(:,:,3)),cNx*cNy,1),reshape(squeeze(rc_ERA_44_GRL(:,:,3)),cNx*cNy,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(r_ERA_44_MIT(:,:,3)),cNx*cNy,1),reshape(squeeze(rc_ERA_44_MIT(:,:,3)),cNx*cNy,1),style{4},'markersize',tip); 
			xlabel('R (mm/d)'); ylabel('Rconv (mm/d)')
			xlim([0 15]); ylim([0 15])
			title('50km JJA')
			leg=legend('ERA Grell','ERA MIT',"location","north"); set(leg,'Fontsize',FUTA-2)
	FILENAME_OUTPUT=['R_vs_Rconv_',AREAtxt{AREA},'_commonLimits_ERAonly.png'];
	saveas(f,FILENAME_OUTPUT);
	close all

end %AREA
