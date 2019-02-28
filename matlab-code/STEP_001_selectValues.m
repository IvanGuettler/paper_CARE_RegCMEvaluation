clear all
close all
clc

%-----------------------------------------------------------------------
%---------------------------------------------> change region %
%-----------------------------------------------------------------------

load all_in_one.mat

RIAV=6;
DJF=1;
JJA=3;

#--------------------------------
# BC: ERA-Int
#--------------------------------
ERA_MIT_50=30;
ERA_MIT_12=38;
ERA_GRL_50=69;
ERA_GRL_12=56;

table(1,:)=[rr_CRO(ERA_MIT_50,DJF,RIAV), rr_CRO(ERA_MIT_50,JJA,RIAV), t_CRO(ERA_MIT_50,DJF,RIAV), t_CRO(ERA_MIT_50,JJA,RIAV)];
table(2,:)=[rr_CRO(ERA_MIT_12,DJF,RIAV), rr_CRO(ERA_MIT_12,JJA,RIAV), t_CRO(ERA_MIT_12,DJF,RIAV), t_CRO(ERA_MIT_12,JJA,RIAV)];
table(3,:)=[rr_CRO(ERA_GRL_50,DJF,RIAV), rr_CRO(ERA_GRL_50,JJA,RIAV), t_CRO(ERA_GRL_50,DJF,RIAV), t_CRO(ERA_GRL_50,JJA,RIAV)];
table(4,:)=[rr_CRO(ERA_GRL_12,DJF,RIAV), rr_CRO(ERA_GRL_12,JJA,RIAV), t_CRO(ERA_GRL_12,DJF,RIAV), t_CRO(ERA_GRL_12,JJA,RIAV)];

#--------------------------------
# BC: EC-EARTH
#--------------------------------
EC_MIT_50=54;
EC_MIT_12=55;
EC_GRL_50=68;
EC_GRL_12=73;

table(5,:)=[rr_CRO(EC_MIT_50,DJF,RIAV), rr_CRO(EC_MIT_50,JJA,RIAV), t_CRO(EC_MIT_50,DJF,RIAV), t_CRO(EC_MIT_50,JJA,RIAV)];
table(6,:)=[rr_CRO(EC_MIT_12,DJF,RIAV), rr_CRO(EC_MIT_12,JJA,RIAV), t_CRO(EC_MIT_12,DJF,RIAV), t_CRO(EC_MIT_12,JJA,RIAV)];
table(7,:)=[rr_CRO(EC_GRL_50,DJF,RIAV), rr_CRO(EC_GRL_50,JJA,RIAV), t_CRO(EC_GRL_50,DJF,RIAV), t_CRO(EC_GRL_50,JJA,RIAV)];
table(8,:)=[rr_CRO(EC_GRL_12,DJF,RIAV), rr_CRO(EC_GRL_12,JJA,RIAV), t_CRO(EC_GRL_12,DJF,RIAV), t_CRO(EC_GRL_12,JJA,RIAV)];

#--------------------------------
# BC: MPI-ESM
#--------------------------------
MP_MIT_50=53;
MP_MIT_12=62;
MP_GRL_50=67;
MP_GRL_12=72;

table( 9,:)=[rr_CRO(MP_MIT_50,DJF,RIAV), rr_CRO(MP_MIT_50,JJA,RIAV), t_CRO(MP_MIT_50,DJF,RIAV), t_CRO(MP_MIT_50,JJA,RIAV)];
table(10,:)=[rr_CRO(MP_MIT_12,DJF,RIAV), rr_CRO(MP_MIT_12,JJA,RIAV), t_CRO(MP_MIT_12,DJF,RIAV), t_CRO(MP_MIT_12,JJA,RIAV)];
table(11,:)=[rr_CRO(MP_GRL_50,DJF,RIAV), rr_CRO(MP_GRL_50,JJA,RIAV), t_CRO(MP_GRL_50,DJF,RIAV), t_CRO(MP_GRL_50,JJA,RIAV)];
table(12,:)=[rr_CRO(MP_GRL_12,DJF,RIAV), rr_CRO(MP_GRL_12,JJA,RIAV), t_CRO(MP_GRL_12,DJF,RIAV), t_CRO(MP_GRL_12,JJA,RIAV)];

#--------------------------------
# BC: HadGEM
#--------------------------------
HA_MIT_50=52;
HA_MIT_12=75;
HA_GRL_50=66;
HA_GRL_12=71;

table(13,:)=[rr_CRO(HA_MIT_50,DJF,RIAV), rr_CRO(HA_MIT_50,JJA,RIAV), t_CRO(HA_MIT_50,DJF,RIAV), t_CRO(HA_MIT_50,JJA,RIAV)];
table(14,:)=[rr_CRO(HA_MIT_12,DJF,RIAV), rr_CRO(HA_MIT_12,JJA,RIAV), t_CRO(HA_MIT_12,DJF,RIAV), t_CRO(HA_MIT_12,JJA,RIAV)];
table(15,:)=[rr_CRO(HA_GRL_50,DJF,RIAV), rr_CRO(HA_GRL_50,JJA,RIAV), t_CRO(HA_GRL_50,DJF,RIAV), t_CRO(HA_GRL_50,JJA,RIAV)];
table(16,:)=[rr_CRO(HA_GRL_12,DJF,RIAV), rr_CRO(HA_GRL_12,JJA,RIAV), t_CRO(HA_GRL_12,DJF,RIAV), t_CRO(HA_GRL_12,JJA,RIAV)];

#--------------------------------
# BC: CNRM
#--------------------------------
CN_MIT_50=51;
CN_MIT_12=74;
CN_GRL_50=65;
CN_GRL_12=70;

table(17,:)=[rr_CRO(CN_MIT_50,DJF,RIAV), rr_CRO(CN_MIT_50,JJA,RIAV), t_CRO(CN_MIT_50,DJF,RIAV), t_CRO(CN_MIT_50,JJA,RIAV)];
table(18,:)=[rr_CRO(CN_MIT_12,DJF,RIAV), rr_CRO(CN_MIT_12,JJA,RIAV), t_CRO(CN_MIT_12,DJF,RIAV), t_CRO(CN_MIT_12,JJA,RIAV)];
table(19,:)=[rr_CRO(CN_GRL_50,DJF,RIAV), rr_CRO(CN_GRL_50,JJA,RIAV), t_CRO(CN_GRL_50,DJF,RIAV), t_CRO(CN_GRL_50,JJA,RIAV)];
table(20,:)=[rr_CRO(CN_GRL_12,DJF,RIAV), rr_CRO(CN_GRL_12,JJA,RIAV), t_CRO(CN_GRL_12,DJF,RIAV), t_CRO(CN_GRL_12,JJA,RIAV)];

#---------------------------------------------------------------------------------------------------------------------

TCOIAV=5;

#--------------------------------
# BC: ERA-Int
#--------------------------------

table_tcoiav(1,:)=[rr_CRO(ERA_MIT_50,DJF,TCOIAV), rr_CRO(ERA_MIT_50,JJA,TCOIAV), t_CRO(ERA_MIT_50,DJF,TCOIAV), t_CRO(ERA_MIT_50,JJA,TCOIAV)];
table_tcoiav(2,:)=[rr_CRO(ERA_MIT_12,DJF,TCOIAV), rr_CRO(ERA_MIT_12,JJA,TCOIAV), t_CRO(ERA_MIT_12,DJF,TCOIAV), t_CRO(ERA_MIT_12,JJA,TCOIAV)];
table_tcoiav(3,:)=[rr_CRO(ERA_GRL_50,DJF,TCOIAV), rr_CRO(ERA_GRL_50,JJA,TCOIAV), t_CRO(ERA_GRL_50,DJF,TCOIAV), t_CRO(ERA_GRL_50,JJA,TCOIAV)];
table_tcoiav(4,:)=[rr_CRO(ERA_GRL_12,DJF,TCOIAV), rr_CRO(ERA_GRL_12,JJA,TCOIAV), t_CRO(ERA_GRL_12,DJF,TCOIAV), t_CRO(ERA_GRL_12,JJA,TCOIAV)];

