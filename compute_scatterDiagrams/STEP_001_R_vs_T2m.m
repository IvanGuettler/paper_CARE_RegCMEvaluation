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
FUTA=7
%-----------
% Determine share of data -------------------------------------------------------------------------------------------> 12.5km
%-----------
a_Q=zeros(4,2);
b_Q=zeros(4,2);
c_Q=zeros(4,2);
d_Q=zeros(4,2);
N_Q=sum(sum(isfinite(t_GCM_11_GRL(:,:,1))));
%------------------------------------------------------
S=1;
%------------------------------------------------------
for i=1:Nx; 
	for j=1:Ny; 
		if ((t_GCM_11_GRL(i,j,S)<0) && (r_GCM_11_GRL(i,j,S)>0)); a_Q(1,1)=a_Q(1,1)+1; end
		if ((t_GCM_11_GRL(i,j,S)>0) && (r_GCM_11_GRL(i,j,S)>0)); a_Q(2,1)=a_Q(2,1)+1; end
		if ((t_GCM_11_GRL(i,j,S)<0) && (r_GCM_11_GRL(i,j,S)<0)); a_Q(3,1)=a_Q(3,1)+1; end
		if ((t_GCM_11_GRL(i,j,S)>0) && (r_GCM_11_GRL(i,j,S)<0)); a_Q(4,1)=a_Q(4,1)+1; end
			if ((t_GCM_11_MIT(i,j,S)<0) && (r_GCM_11_MIT(i,j,S)>0)); b_Q(1,1)=b_Q(1,1)+1; end
			if ((t_GCM_11_MIT(i,j,S)>0) && (r_GCM_11_MIT(i,j,S)>0)); b_Q(2,1)=b_Q(2,1)+1; end
			if ((t_GCM_11_MIT(i,j,S)<0) && (r_GCM_11_MIT(i,j,S)<0)); b_Q(3,1)=b_Q(3,1)+1; end
			if ((t_GCM_11_MIT(i,j,S)>0) && (r_GCM_11_MIT(i,j,S)<0)); b_Q(4,1)=b_Q(4,1)+1; end
		if ((t_ERA_11_GRL(i,j,S)<0) && (r_ERA_11_GRL(i,j,S)>0)); c_Q(1,1)=c_Q(1,1)+1; end
		if ((t_ERA_11_GRL(i,j,S)>0) && (r_ERA_11_GRL(i,j,S)>0)); c_Q(2,1)=c_Q(2,1)+1; end
		if ((t_ERA_11_GRL(i,j,S)<0) && (r_ERA_11_GRL(i,j,S)<0)); c_Q(3,1)=c_Q(3,1)+1; end
		if ((t_ERA_11_GRL(i,j,S)>0) && (r_ERA_11_GRL(i,j,S)<0)); c_Q(4,1)=c_Q(4,1)+1; end
			if ((t_ERA_11_MIT(i,j,S)<0) && (r_ERA_11_MIT(i,j,S)>0)); d_Q(1,1)=d_Q(1,1)+1; end
			if ((t_ERA_11_MIT(i,j,S)>0) && (r_ERA_11_MIT(i,j,S)>0)); d_Q(2,1)=d_Q(2,1)+1; end
			if ((t_ERA_11_MIT(i,j,S)<0) && (r_ERA_11_MIT(i,j,S)<0)); d_Q(3,1)=d_Q(3,1)+1; end
			if ((t_ERA_11_MIT(i,j,S)>0) && (r_ERA_11_MIT(i,j,S)<0)); d_Q(4,1)=d_Q(4,1)+1; end
	end
end
%------------------------------------------------------
S=3;
%------------------------------------------------------
for i=1:Nx; 
	for j=1:Ny; 
		if ((t_GCM_11_GRL(i,j,S)<0) && (r_GCM_11_GRL(i,j,S)>0)); a_Q(1,2)=a_Q(1,2)+1; end
		if ((t_GCM_11_GRL(i,j,S)>0) && (r_GCM_11_GRL(i,j,S)>0)); a_Q(2,2)=a_Q(2,2)+1; end
		if ((t_GCM_11_GRL(i,j,S)<0) && (r_GCM_11_GRL(i,j,S)<0)); a_Q(3,2)=a_Q(3,2)+1; end
		if ((t_GCM_11_GRL(i,j,S)>0) && (r_GCM_11_GRL(i,j,S)<0)); a_Q(4,2)=a_Q(4,2)+1; end
			if ((t_GCM_11_MIT(i,j,S)<0) && (r_GCM_11_MIT(i,j,S)>0)); b_Q(1,2)=b_Q(1,2)+1; end
			if ((t_GCM_11_MIT(i,j,S)>0) && (r_GCM_11_MIT(i,j,S)>0)); b_Q(2,2)=b_Q(2,2)+1; end
			if ((t_GCM_11_MIT(i,j,S)<0) && (r_GCM_11_MIT(i,j,S)<0)); b_Q(3,2)=b_Q(3,2)+1; end
			if ((t_GCM_11_MIT(i,j,S)>0) && (r_GCM_11_MIT(i,j,S)<0)); b_Q(4,2)=b_Q(4,2)+1; end
		if ((t_ERA_11_GRL(i,j,S)<0) && (r_ERA_11_GRL(i,j,S)>0)); c_Q(1,2)=c_Q(1,2)+1; end
		if ((t_ERA_11_GRL(i,j,S)>0) && (r_ERA_11_GRL(i,j,S)>0)); c_Q(2,2)=c_Q(2,2)+1; end
		if ((t_ERA_11_GRL(i,j,S)<0) && (r_ERA_11_GRL(i,j,S)<0)); c_Q(3,2)=c_Q(3,2)+1; end
		if ((t_ERA_11_GRL(i,j,S)>0) && (r_ERA_11_GRL(i,j,S)<0)); c_Q(4,2)=c_Q(4,2)+1; end
			if ((t_ERA_11_MIT(i,j,S)<0) && (r_ERA_11_MIT(i,j,S)>0)); d_Q(1,2)=d_Q(1,2)+1; end
			if ((t_ERA_11_MIT(i,j,S)>0) && (r_ERA_11_MIT(i,j,S)>0)); d_Q(2,2)=d_Q(2,2)+1; end
			if ((t_ERA_11_MIT(i,j,S)<0) && (r_ERA_11_MIT(i,j,S)<0)); d_Q(3,2)=d_Q(3,2)+1; end
			if ((t_ERA_11_MIT(i,j,S)>0) && (r_ERA_11_MIT(i,j,S)<0)); d_Q(4,2)=d_Q(4,2)+1; end
	end
end

%-----------
% Plot data
%-----------
loc_Q_x=[-7  4.5 -7  4.5];
loc_Q_y=[14   14 -5   -5];
f=figure(1); set(f,'outerposition',[276   225   730   799],'position',[286   257   710   664]);

	subplot(2,2,1)
		plot([ 0 0],[-5 13],'k'); hold on
		plot([-7 5],[ 0  0],'k'); hold on
		plot(reshape(squeeze(t_GCM_11_GRL(:,:,1)),Nx*Ny,1),reshape(squeeze(r_GCM_11_GRL(:,:,1)),Nx*Ny,1),style{1}); hold on
		plot(reshape(squeeze(t_GCM_11_MIT(:,:,1)),Nx*Ny,1),reshape(squeeze(r_GCM_11_MIT(:,:,1)),Nx*Ny,1),style{2}); hold on
		plot(reshape(squeeze(t_ERA_11_GRL(:,:,1)),Nx*Ny,1),reshape(squeeze(r_ERA_11_GRL(:,:,1)),Nx*Ny,1),style{3}); hold on
		plot(reshape(squeeze(t_ERA_11_MIT(:,:,1)),Nx*Ny,1),reshape(squeeze(r_ERA_11_MIT(:,:,1)),Nx*Ny,1),style{4}); 
			xlabel('dT2m (deg C)'); ylabel('dR (mm/d)')
			xlim([-7 5]); ylim([-5 13])
			title('12.5km DJF')
			for Q=[1:4];
				t=text(loc_Q_x(Q),loc_Q_y(Q)-0,[num2str(round(a_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','r');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-1,[num2str(round(b_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','b');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-2,[num2str(round(c_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','g');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-3,[num2str(round(d_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','k');
			end
	subplot(2,2,3)
		plot([ 0 0],[-5 13],'k'); hold on
		plot([-7 5],[ 0  0],'k'); hold on
		plot(reshape(squeeze(t_GCM_11_GRL(:,:,3)),Nx*Ny,1),reshape(squeeze(r_GCM_11_GRL(:,:,3)),Nx*Ny,1),style{1}); hold on
		plot(reshape(squeeze(t_GCM_11_MIT(:,:,3)),Nx*Ny,1),reshape(squeeze(r_GCM_11_MIT(:,:,3)),Nx*Ny,1),style{2}); hold on
		plot(reshape(squeeze(t_ERA_11_GRL(:,:,3)),Nx*Ny,1),reshape(squeeze(r_ERA_11_GRL(:,:,3)),Nx*Ny,1),style{3}); hold on
		plot(reshape(squeeze(t_ERA_11_MIT(:,:,3)),Nx*Ny,1),reshape(squeeze(r_ERA_11_MIT(:,:,3)),Nx*Ny,1),style{4}); 
			xlabel('dT2m (deg C)'); ylabel('dR (mm/d)')
			xlim([-7 5]); ylim([-5 13])
			title('12.5km JJA')
			for Q=[1:4];
				t=text(loc_Q_x(Q),loc_Q_y(Q)-0,[num2str(round(a_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','r');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-1,[num2str(round(b_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','b');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-2,[num2str(round(c_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','g');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-3,[num2str(round(d_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','k');
			end

%-----------
% Determine share of data -------------------------------------------------------------------------------------------> 50km
%-----------
a_Q=zeros(4,2);
b_Q=zeros(4,2);
c_Q=zeros(4,2);
d_Q=zeros(4,2);
N_Q=sum(sum(isfinite(t_GCM_44_GRL(:,:,1))));
%------------------------------------------------------
S=1;
%------------------------------------------------------
for i=1:cNx; 
	for j=1:cNy; 
		if ((t_GCM_44_GRL(i,j,S)<0) && (r_GCM_44_GRL(i,j,S)>0)); a_Q(1,1)=a_Q(1,1)+1; end
		if ((t_GCM_44_GRL(i,j,S)>0) && (r_GCM_44_GRL(i,j,S)>0)); a_Q(2,1)=a_Q(2,1)+1; end
		if ((t_GCM_44_GRL(i,j,S)<0) && (r_GCM_44_GRL(i,j,S)<0)); a_Q(3,1)=a_Q(3,1)+1; end
		if ((t_GCM_44_GRL(i,j,S)>0) && (r_GCM_44_GRL(i,j,S)<0)); a_Q(4,1)=a_Q(4,1)+1; end
			if ((t_GCM_44_MIT(i,j,S)<0) && (r_GCM_44_MIT(i,j,S)>0)); b_Q(1,1)=b_Q(1,1)+1; end
			if ((t_GCM_44_MIT(i,j,S)>0) && (r_GCM_44_MIT(i,j,S)>0)); b_Q(2,1)=b_Q(2,1)+1; end
			if ((t_GCM_44_MIT(i,j,S)<0) && (r_GCM_44_MIT(i,j,S)<0)); b_Q(3,1)=b_Q(3,1)+1; end
			if ((t_GCM_44_MIT(i,j,S)>0) && (r_GCM_44_MIT(i,j,S)<0)); b_Q(4,1)=b_Q(4,1)+1; end
		if ((t_ERA_44_GRL(i,j,S)<0) && (r_ERA_44_GRL(i,j,S)>0)); c_Q(1,1)=c_Q(1,1)+1; end
		if ((t_ERA_44_GRL(i,j,S)>0) && (r_ERA_44_GRL(i,j,S)>0)); c_Q(2,1)=c_Q(2,1)+1; end
		if ((t_ERA_44_GRL(i,j,S)<0) && (r_ERA_44_GRL(i,j,S)<0)); c_Q(3,1)=c_Q(3,1)+1; end
		if ((t_ERA_44_GRL(i,j,S)>0) && (r_ERA_44_GRL(i,j,S)<0)); c_Q(4,1)=c_Q(4,1)+1; end
			if ((t_ERA_44_MIT(i,j,S)<0) && (r_ERA_44_MIT(i,j,S)>0)); d_Q(1,1)=d_Q(1,1)+1; end
			if ((t_ERA_44_MIT(i,j,S)>0) && (r_ERA_44_MIT(i,j,S)>0)); d_Q(2,1)=d_Q(2,1)+1; end
			if ((t_ERA_44_MIT(i,j,S)<0) && (r_ERA_44_MIT(i,j,S)<0)); d_Q(3,1)=d_Q(3,1)+1; end
			if ((t_ERA_44_MIT(i,j,S)>0) && (r_ERA_44_MIT(i,j,S)<0)); d_Q(4,1)=d_Q(4,1)+1; end
	end
end
%------------------------------------------------------
S=3;
%------------------------------------------------------
for i=1:cNx; 
	for j=1:cNy; 
		if ((t_GCM_44_GRL(i,j,S)<0) && (r_GCM_44_GRL(i,j,S)>0)); a_Q(1,2)=a_Q(1,2)+1; end
		if ((t_GCM_44_GRL(i,j,S)>0) && (r_GCM_44_GRL(i,j,S)>0)); a_Q(2,2)=a_Q(2,2)+1; end
		if ((t_GCM_44_GRL(i,j,S)<0) && (r_GCM_44_GRL(i,j,S)<0)); a_Q(3,2)=a_Q(3,2)+1; end
		if ((t_GCM_44_GRL(i,j,S)>0) && (r_GCM_44_GRL(i,j,S)<0)); a_Q(4,2)=a_Q(4,2)+1; end
			if ((t_GCM_44_MIT(i,j,S)<0) && (r_GCM_44_MIT(i,j,S)>0)); b_Q(1,2)=b_Q(1,2)+1; end
			if ((t_GCM_44_MIT(i,j,S)>0) && (r_GCM_44_MIT(i,j,S)>0)); b_Q(2,2)=b_Q(2,2)+1; end
			if ((t_GCM_44_MIT(i,j,S)<0) && (r_GCM_44_MIT(i,j,S)<0)); b_Q(3,2)=b_Q(3,2)+1; end
			if ((t_GCM_44_MIT(i,j,S)>0) && (r_GCM_44_MIT(i,j,S)<0)); b_Q(4,2)=b_Q(4,2)+1; end
		if ((t_ERA_44_GRL(i,j,S)<0) && (r_ERA_44_GRL(i,j,S)>0)); c_Q(1,2)=c_Q(1,2)+1; end
		if ((t_ERA_44_GRL(i,j,S)>0) && (r_ERA_44_GRL(i,j,S)>0)); c_Q(2,2)=c_Q(2,2)+1; end
		if ((t_ERA_44_GRL(i,j,S)<0) && (r_ERA_44_GRL(i,j,S)<0)); c_Q(3,2)=c_Q(3,2)+1; end
		if ((t_ERA_44_GRL(i,j,S)>0) && (r_ERA_44_GRL(i,j,S)<0)); c_Q(4,2)=c_Q(4,2)+1; end
			if ((t_ERA_44_MIT(i,j,S)<0) && (r_ERA_44_MIT(i,j,S)>0)); d_Q(1,2)=d_Q(1,2)+1; end
			if ((t_ERA_44_MIT(i,j,S)>0) && (r_ERA_44_MIT(i,j,S)>0)); d_Q(2,2)=d_Q(2,2)+1; end
			if ((t_ERA_44_MIT(i,j,S)<0) && (r_ERA_44_MIT(i,j,S)<0)); d_Q(3,2)=d_Q(3,2)+1; end
			if ((t_ERA_44_MIT(i,j,S)>0) && (r_ERA_44_MIT(i,j,S)<0)); d_Q(4,2)=d_Q(4,2)+1; end
	end
end



	subplot(2,2,2)
		plot([ 0 0],[-5 13],'k'); hold on
		plot([-7 5],[ 0  0],'k'); hold on
		plot(reshape(squeeze(t_GCM_44_GRL(:,:,1)),cNx*cNy,1),reshape(squeeze(r_GCM_44_GRL(:,:,1)),cNx*cNy,1),style{1}); hold on
		plot(reshape(squeeze(t_GCM_44_MIT(:,:,1)),cNx*cNy,1),reshape(squeeze(r_GCM_44_MIT(:,:,1)),cNx*cNy,1),style{2}); hold on
		plot(reshape(squeeze(t_ERA_44_GRL(:,:,1)),cNx*cNy,1),reshape(squeeze(r_ERA_44_GRL(:,:,1)),cNx*cNy,1),style{3}); hold on
		plot(reshape(squeeze(t_ERA_44_MIT(:,:,1)),cNx*cNy,1),reshape(squeeze(r_ERA_44_MIT(:,:,1)),cNx*cNy,1),style{4}); 
			xlabel('dT2m (deg C)'); ylabel('dR (mm/d)')
			xlim([-7 5]); ylim([-5 13])
			title('50km DJF')
			for Q=[1:4];
				t=text(loc_Q_x(Q),loc_Q_y(Q)-0,[num2str(round(a_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','r');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-1,[num2str(round(b_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','b');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-2,[num2str(round(c_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','g');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-3,[num2str(round(d_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','k');
			end
	subplot(2,2,4)
		plot(reshape(squeeze(t_GCM_44_GRL(:,:,3)),cNx*cNy,1),reshape(squeeze(r_GCM_44_GRL(:,:,3)),cNx*cNy,1),style{1}); hold on
		plot(reshape(squeeze(t_GCM_44_MIT(:,:,3)),cNx*cNy,1),reshape(squeeze(r_GCM_44_MIT(:,:,3)),cNx*cNy,1),style{2}); hold on
		plot(reshape(squeeze(t_ERA_44_GRL(:,:,3)),cNx*cNy,1),reshape(squeeze(r_ERA_44_GRL(:,:,3)),cNx*cNy,1),style{3}); hold on
		plot(reshape(squeeze(t_ERA_44_MIT(:,:,3)),cNx*cNy,1),reshape(squeeze(r_ERA_44_MIT(:,:,3)),cNx*cNy,1),style{4}); 
		plot([ 0 0],[-5 13],'k'); hold on
		plot([-7 5],[ 0  0],'k'); hold on
			xlabel('dT2m (deg C)'); ylabel('dR (mm/d)')
			xlim([-7 5]); ylim([-5 13])
			title('50km JJA')
			leg=legend('GCM Grell','GCM MIT','ERA Grell','ERA MIT',"location","north"); set(leg,'Fontsize',FUTA-2)
			for Q=[1:4];
				t=text(loc_Q_x(Q),loc_Q_y(Q)-0,[num2str(round(a_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','r');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-1,[num2str(round(b_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','b');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-2,[num2str(round(c_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','g');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-3,[num2str(round(d_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','k');
			end		

	saveas(f,'dT2m_vs_dR_CRO_commonLimits.png');
