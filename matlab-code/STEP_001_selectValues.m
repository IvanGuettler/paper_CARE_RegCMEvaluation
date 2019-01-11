clear all
close all
clc

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

table(1,:)=[rr_EA(ERA_MIT_50,DJF,RIAV), rr_EA(ERA_MIT_50,JJA,RIAV), t_EA(ERA_MIT_50,DJF,RIAV), t_EA(ERA_MIT_50,JJA,RIAV)];
table(2,:)=[rr_EA(ERA_MIT_12,DJF,RIAV), rr_EA(ERA_MIT_12,JJA,RIAV), t_EA(ERA_MIT_12,DJF,RIAV), t_EA(ERA_MIT_12,JJA,RIAV)];
table(3,:)=[rr_EA(ERA_GRL_50,DJF,RIAV), rr_EA(ERA_GRL_50,JJA,RIAV), t_EA(ERA_GRL_50,DJF,RIAV), t_EA(ERA_GRL_50,JJA,RIAV)];
table(4,:)=[rr_EA(ERA_GRL_12,DJF,RIAV), rr_EA(ERA_GRL_12,JJA,RIAV), t_EA(ERA_GRL_12,DJF,RIAV), t_EA(ERA_GRL_12,JJA,RIAV)];

#--------------------------------
# BC: EC-EARTH
#--------------------------------
EC_MIT_50=54;
EC_MIT_12=55;
EC_GRL_50=68;
EC_GRL_12=73;

table(5,:)=[rr_EA(EC_MIT_50,DJF,RIAV), rr_EA(EC_MIT_50,JJA,RIAV), t_EA(EC_MIT_50,DJF,RIAV), t_EA(EC_MIT_50,JJA,RIAV)];
table(6,:)=[rr_EA(EC_MIT_12,DJF,RIAV), rr_EA(EC_MIT_12,JJA,RIAV), t_EA(EC_MIT_12,DJF,RIAV), t_EA(EC_MIT_12,JJA,RIAV)];
table(7,:)=[rr_EA(EC_GRL_50,DJF,RIAV), rr_EA(EC_GRL_50,JJA,RIAV), t_EA(EC_GRL_50,DJF,RIAV), t_EA(EC_GRL_50,JJA,RIAV)];
table(8,:)=[rr_EA(EC_GRL_12,DJF,RIAV), rr_EA(EC_GRL_12,JJA,RIAV), t_EA(EC_GRL_12,DJF,RIAV), t_EA(EC_GRL_12,JJA,RIAV)];

#--------------------------------
# BC: MPI-ESM
#--------------------------------
MP_MIT_50=53;
MP_MIT_12=62;
MP_GRL_50=67;
MP_GRL_12=72;

table( 9,:)=[rr_EA(MP_MIT_50,DJF,RIAV), rr_EA(MP_MIT_50,JJA,RIAV), t_EA(MP_MIT_50,DJF,RIAV), t_EA(MP_MIT_50,JJA,RIAV)];
table(10,:)=[rr_EA(MP_MIT_12,DJF,RIAV), rr_EA(MP_MIT_12,JJA,RIAV), t_EA(MP_MIT_12,DJF,RIAV), t_EA(MP_MIT_12,JJA,RIAV)];
table(11,:)=[rr_EA(MP_GRL_50,DJF,RIAV), rr_EA(MP_GRL_50,JJA,RIAV), t_EA(MP_GRL_50,DJF,RIAV), t_EA(MP_GRL_50,JJA,RIAV)];
table(12,:)=[rr_EA(MP_GRL_12,DJF,RIAV), rr_EA(MP_GRL_12,JJA,RIAV), t_EA(MP_GRL_12,DJF,RIAV), t_EA(MP_GRL_12,JJA,RIAV)];

#--------------------------------
# BC: HadGEM
#--------------------------------
HA_MIT_50=52;
HA_MIT_12=75;
HA_GRL_50=66;
HA_GRL_12=71;

table(13,:)=[rr_EA(HA_MIT_50,DJF,RIAV), rr_EA(HA_MIT_50,JJA,RIAV), t_EA(HA_MIT_50,DJF,RIAV), t_EA(HA_MIT_50,JJA,RIAV)];
table(14,:)=[rr_EA(HA_MIT_12,DJF,RIAV), rr_EA(HA_MIT_12,JJA,RIAV), t_EA(HA_MIT_12,DJF,RIAV), t_EA(HA_MIT_12,JJA,RIAV)];
table(15,:)=[rr_EA(HA_GRL_50,DJF,RIAV), rr_EA(HA_GRL_50,JJA,RIAV), t_EA(HA_GRL_50,DJF,RIAV), t_EA(HA_GRL_50,JJA,RIAV)];
table(16,:)=[rr_EA(HA_GRL_12,DJF,RIAV), rr_EA(HA_GRL_12,JJA,RIAV), t_EA(HA_GRL_12,DJF,RIAV), t_EA(HA_GRL_12,JJA,RIAV)];

#--------------------------------
# BC: CNRM
#--------------------------------
CN_MIT_50=51;
CN_MIT_12=74;
CN_GRL_50=65;
CN_GRL_12=70;

table(17,:)=[rr_EA(CN_MIT_50,DJF,RIAV), rr_EA(CN_MIT_50,JJA,RIAV), t_EA(CN_MIT_50,DJF,RIAV), t_EA(CN_MIT_50,JJA,RIAV)];
table(18,:)=[rr_EA(CN_MIT_12,DJF,RIAV), rr_EA(CN_MIT_12,JJA,RIAV), t_EA(CN_MIT_12,DJF,RIAV), t_EA(CN_MIT_12,JJA,RIAV)];
table(19,:)=[rr_EA(CN_GRL_50,DJF,RIAV), rr_EA(CN_GRL_50,JJA,RIAV), t_EA(CN_GRL_50,DJF,RIAV), t_EA(CN_GRL_50,JJA,RIAV)];
table(20,:)=[rr_EA(CN_GRL_12,DJF,RIAV), rr_EA(CN_GRL_12,JJA,RIAV), t_EA(CN_GRL_12,DJF,RIAV), t_EA(CN_GRL_12,JJA,RIAV)];

