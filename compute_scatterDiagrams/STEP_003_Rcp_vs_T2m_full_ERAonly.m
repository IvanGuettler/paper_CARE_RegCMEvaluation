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
t_EOBS_11=squeeze(ncread([DIR,'EOBS/tas_EOBS-1971-2000_',AREAtxt{AREA},'.nc'],'tas'));
t_EOBS_44=squeeze(ncread([DIR,'EOBS/tas_EOBS-1971-2000_coarse_',AREAtxt{AREA},'.nc'],'tas'));


%------------------------------------------------------------------------------------------->12.5km+EOBS na full

t_ERA_11_GRL=squeeze(ncread([DIR,'t/t_RegCM-11-ERA-Grell_',AREAtxt{AREA},'.nc'],'tas'))          +t_EOBS_11;
t_ERA_11_MIT=squeeze(ncread([DIR,'t/t_RegCM-11-ERA-MIT_',AREAtxt{AREA},'.nc'],'tas'))            +t_EOBS_11;

r_ERA_11_GRL=squeeze(ncread([DIR,'prc/prc_RegCM-11-ERA-Grell_MMD_coarse_int_',AREAtxt{AREA},'.nc'],'prc'));
r_ERA_11_MIT=squeeze(ncread([DIR,'prc/prc_RegCM-11-ERA-MIT_MMD_coarse_int_',AREAtxt{AREA},'.nc'],'prc'))  ;

%------------------------------------------------------------------------------------------->50km+EOBS na full

t_ERA_44_GRL=squeeze(ncread([DIR,'t/t_RegCM-44-ERA-Grell_',AREAtxt{AREA},'.nc'],'tas'))          +t_EOBS_44;
t_ERA_44_MIT=squeeze(ncread([DIR,'t/t_RegCM-44-ERA-MIT_',AREAtxt{AREA},'.nc'],'tas'))            +t_EOBS_44;

r_ERA_44_GRL=squeeze(ncread([DIR,'prc/prc_RegCM-44-ERA-Grell_int_',AREAtxt{AREA},'.nc'],'prcv'));
r_ERA_44_MIT=squeeze(ncread([DIR,'prc/prc_RegCM-44-ERA-MIT_int_',AREAtxt{AREA},'.nc'],'prcv'))  ;



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
% Determine share of data -------------------------------------------------------------------------------------------> 12.5km
%-----------
a_Q=zeros(4,2);
b_Q=zeros(4,2);
c_Q=zeros(4,2);
d_Q=zeros(4,2);
N_Q=sum(sum(isfinite(t_ERA_11_GRL(:,:,1))));
%------------------------------------------------------
S=1;
%------------------------------------------------------
for i=1:Nx; 
	for j=1:Ny; 
		if ((t_ERA_11_GRL(i,j,S)<0) && (r_ERA_11_GRL(i,j,S)>0)); c_Q(1,1)=c_Q(1,1)+1; end
		if ((t_ERA_11_GRL(i,j,S)>0) && (r_ERA_11_GRL(i,j,S)>0)); c_Q(2,1)=c_Q(2,1)+1; end
			if ((t_ERA_11_MIT(i,j,S)<0) && (r_ERA_11_MIT(i,j,S)>0)); d_Q(1,1)=d_Q(1,1)+1; end
			if ((t_ERA_11_MIT(i,j,S)>0) && (r_ERA_11_MIT(i,j,S)>0)); d_Q(2,1)=d_Q(2,1)+1; end
	end
end
%------------------------------------------------------
S=3;
%------------------------------------------------------
for i=1:Nx; 
	for j=1:Ny; 
		if ((t_ERA_11_GRL(i,j,S)<0) && (r_ERA_11_GRL(i,j,S)>0)); c_Q(1,2)=c_Q(1,2)+1; end
		if ((t_ERA_11_GRL(i,j,S)>0) && (r_ERA_11_GRL(i,j,S)>0)); c_Q(2,2)=c_Q(2,2)+1; end
			if ((t_ERA_11_MIT(i,j,S)<0) && (r_ERA_11_MIT(i,j,S)>0)); d_Q(1,2)=d_Q(1,2)+1; end
			if ((t_ERA_11_MIT(i,j,S)>0) && (r_ERA_11_MIT(i,j,S)>0)); d_Q(2,2)=d_Q(2,2)+1; end
	end
end

%-----------
% Plot data
%-----------
loc_Q_x=[-10   10  ];
loc_Q_y=[ 12   12  ];
f=figure(1); set(f,'outerposition',[276   225   730   799],'position',[286   257   710   664]);

	subplot(2,2,1)
		plot([ 0 0],[0 15],'k'); hold on
		plot(reshape(squeeze(t_ERA_11_GRL(:,:,1)),Nx*Ny,1),reshape(squeeze(r_ERA_11_GRL(:,:,1)),Nx*Ny,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(t_ERA_11_MIT(:,:,1)),Nx*Ny,1),reshape(squeeze(r_ERA_11_MIT(:,:,1)),Nx*Ny,1),style{4},'markersize',tip); 
			xlabel('T2m (deg C)'); ylabel('Rconv (mm/d)')
			xlim([-15 30]); ylim([0 15])
			title('12.5km DJF')
			for Q=[1:2];
				t=text(loc_Q_x(Q),loc_Q_y(Q)-2,[num2str(round(c_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','g');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-3,[num2str(round(d_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','k');
			end
	subplot(2,2,3)
		plot([ 0 0],[0 15],'k'); hold on
		plot(reshape(squeeze(t_ERA_11_GRL(:,:,3)),Nx*Ny,1),reshape(squeeze(r_ERA_11_GRL(:,:,3)),Nx*Ny,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(t_ERA_11_MIT(:,:,3)),Nx*Ny,1),reshape(squeeze(r_ERA_11_MIT(:,:,3)),Nx*Ny,1),style{4},'markersize',tip); 
			xlabel('T2m (deg C)'); ylabel('Rconv (mm/d)')
			xlim([-15 30]); ylim([0 15])
			title('12.5km JJA')
			for Q=[1:2];
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
N_Q=sum(sum(isfinite(t_ERA_44_GRL(:,:,1))));
%------------------------------------------------------
S=1;
%------------------------------------------------------
for i=1:cNx; 
	for j=1:cNy; 
		if ((t_ERA_44_GRL(i,j,S)<0) && (r_ERA_44_GRL(i,j,S)>0)); c_Q(1,1)=c_Q(1,1)+1; end
		if ((t_ERA_44_GRL(i,j,S)>0) && (r_ERA_44_GRL(i,j,S)>0)); c_Q(2,1)=c_Q(2,1)+1; end
			if ((t_ERA_44_MIT(i,j,S)<0) && (r_ERA_44_MIT(i,j,S)>0)); d_Q(1,1)=d_Q(1,1)+1; end
			if ((t_ERA_44_MIT(i,j,S)>0) && (r_ERA_44_MIT(i,j,S)>0)); d_Q(2,1)=d_Q(2,1)+1; end
	end
end
%------------------------------------------------------
S=3;
%------------------------------------------------------
for i=1:cNx; 
	for j=1:cNy; 
		if ((t_ERA_44_GRL(i,j,S)<0) && (r_ERA_44_GRL(i,j,S)>0)); c_Q(1,2)=c_Q(1,2)+1; end
		if ((t_ERA_44_GRL(i,j,S)>0) && (r_ERA_44_GRL(i,j,S)>0)); c_Q(2,2)=c_Q(2,2)+1; end
			if ((t_ERA_44_MIT(i,j,S)<0) && (r_ERA_44_MIT(i,j,S)>0)); d_Q(1,2)=d_Q(1,2)+1; end
			if ((t_ERA_44_MIT(i,j,S)>0) && (r_ERA_44_MIT(i,j,S)>0)); d_Q(2,2)=d_Q(2,2)+1; end
	end
end



	subplot(2,2,2)
		plot([ 0 0],[0 15],'k'); hold on
		plot(reshape(squeeze(t_ERA_44_GRL(:,:,1)),cNx*cNy,1),reshape(squeeze(r_ERA_44_GRL(:,:,1)),cNx*cNy,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(t_ERA_44_MIT(:,:,1)),cNx*cNy,1),reshape(squeeze(r_ERA_44_MIT(:,:,1)),cNx*cNy,1),style{4},'markersize',tip); 
			xlabel('T2m (deg C)'); ylabel('Rconv (mm/d)')
			xlim([-15 30]); ylim([0 15])
			title('50km DJF')
			for Q=[1:2];
				t=text(loc_Q_x(Q),loc_Q_y(Q)-2,[num2str(round(c_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','g');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-3,[num2str(round(d_Q(Q,1)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','k');
			end
	subplot(2,2,4)
		plot(reshape(squeeze(t_ERA_44_GRL(:,:,3)),cNx*cNy,1),reshape(squeeze(r_ERA_44_GRL(:,:,3)),cNx*cNy,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(t_ERA_44_MIT(:,:,3)),cNx*cNy,1),reshape(squeeze(r_ERA_44_MIT(:,:,3)),cNx*cNy,1),style{4},'markersize',tip); 
		plot([ 0 0],[0 15],'k'); hold on
			xlabel('T2m (deg C)'); ylabel('Rconv (mm/d)')
			xlim([-15 30]); ylim([0 15])
			title('50km JJA')
			leg=legend('ERA Grell','ERA MIT',"location","north"); set(leg,'Fontsize',FUTA-2)
			for Q=[1:2];
				t=text(loc_Q_x(Q),loc_Q_y(Q)-2,[num2str(round(c_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','g');
				t=text(loc_Q_x(Q),loc_Q_y(Q)-3,[num2str(round(d_Q(Q,2)./N_Q*100*10)/10),'%']); set(t,'Fontsize',FUTA,'Color','k');
			end		
	FILENAME_OUTPUT=['T2m_vs_Rconv_',AREAtxt{AREA},'_commonLimits_ERAonly.png'];
	saveas(f,FILENAME_OUTPUT);
	close all

end %AREA

f=figure(2); set(f,'outerposition',[276   225   730   799],'position',[286   257   710   664]);
	subplot(2,2,1)
		plot(reshape(squeeze(t_ERA_11_GRL(:,:,3)),Nx*Ny,1),reshape(squeeze(r_ERA_11_GRL(:,:,3)),Nx*Ny,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(t_ERA_11_MIT(:,:,3)),Nx*Ny,1),reshape(squeeze(r_ERA_11_MIT(:,:,3)),Nx*Ny,1),style{4},'markersize',tip); 
			xlabel('T2m (deg C)'); ylabel('Rconv (mm/d)')
			xlim([5 26]); ylim([0 5])
			title('12.5km JJA')
	subplot(2,2,2)
		plot(reshape(squeeze(t_ERA_44_GRL(:,:,3)),cNx*cNy,1),reshape(squeeze(r_ERA_44_GRL(:,:,3)),cNx*cNy,1),style{3},'markersize',tip); hold on
		plot(reshape(squeeze(t_ERA_44_MIT(:,:,3)),cNx*cNy,1),reshape(squeeze(r_ERA_44_MIT(:,:,3)),cNx*cNy,1),style{4},'markersize',tip); 
		plot([ 0 0],[0 15],'k'); hold on
			xlabel('T2m (deg C)'); ylabel('Rconv (mm/d)')
			xlim([5 26]); ylim([0 5])
			title('50km JJA')
	FILENAME_OUTPUT=['T2m_vs_Rconv_',AREAtxt{AREA},'_commonLimits_ERAonly_ZOOM+JJA.png'];
	saveas(f,FILENAME_OUTPUT);
	close all

