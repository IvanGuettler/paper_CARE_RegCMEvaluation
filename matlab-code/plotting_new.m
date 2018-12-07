clear all; close all; clc
model={'IPSL_CM5A-MR' 'KNMI_EC-EARTH' 'KNMI_HadGEM2-ES' 'SMHI_CM5A-MR' 'SMHI_Cm5' 'SMHI_EC-EARTH' 'SMHI_HadGEM2-ES' 'SMHI_ESM-LR' 'DMI_EC-EARTH' 'CNRM_Cm5' 'CLM_ESM-LR' 'CLM_HadGEM2-ES' 'CLM_EC-EARTH' 'CLM_Cm5' 'CLM_ERAInterim' 'IPSL_ERAInterim' 'KNMI_ERAInterim' 'SMHI_ERAInterim' 'DHMZ_ERAInterim' 'DMI_ERAInterim' 'CNRM_ERAInterim' 'ERAInterim' 'CM5A-MR' 'Cm5' 'EC-EARTH_r1i1p1' 'EC-EARTH_r3i1p1' 'EC-EARTH_r12i1p1' 'HadGEM2-ES' 'NorESM1-M' 'ESM-LR_r1i1p1' 'ESM-LR_r2i1p1' 'ESM-MR' 'DHMZ_CNRM' 'DHMZ_HadGEM2' 'DHMZ_MPI' 'DHMZ_EC-EARTH' 'DHMZ_ERAInterim_Grell' 'MPI_ERAInterim' 'DMI_NorESM' 'MPIr1_ESM-LR' 'MPIr2_ESM-LR' 'DHMZ_ESM-LR' 'ALARO_ERAInterim' 'ALARO_Cm5'}';
grell={'DHMZ_Cm5' 'DHMZ_HadGEM2' 'DHMZ_ESM-LR' 'DHMZ_EC-EARTH' 'DHMZ_ERA'};
ecmwf={'DHMZ_SMALL' 'DHMZ_UW'}
met={'BIAS' 'PCTL95' 'PACO' 'RSV' 'TCOIAV' 'RIAV' 'ROYA' 'CRCO'}';
reg={'AL' 'BI' 'EA' 'FR' 'IP' 'MD' 'ME' 'SC' 'CRO'}';
par={'t' 'rr'}';

[t_AL(1:11,:,:), t_BI(1:11,:,:), t_EA(1:11,:,:), t_FR(1:11,:,:), t_IP(1:11,:,:), t_MD(1:11,:,:), t_ME(1:11,:,:), t_SC(1:11,:,:), t_CRO(1:11,:,:), t_ROYA(1:11,:), t_CRCO(1:11,:), rr_AL(1:11,:,:), rr_BI(1:11,:,:), rr_EA(1:11,:,:), rr_FR(1:11,:,:), rr_IP(1:11,:,:), rr_MD(1:11,:,:), rr_ME(1:11,:,:), rr_SC(1:11,:,:), rr_CRO(1:11,:,:), rr_ROYA(1:11,:), rr_CRCO(1:11,:)]=loading(1:11,model,met,reg,par,1,1);

[t_AL(12:25,:,:), t_BI(12:25,:,:), t_EA(12:25,:,:), t_FR(12:25,:,:), t_IP(12:25,:,:), t_MD(12:25,:,:), t_ME(12:25,:,:), t_SC(12:25,:,:), t_CRO(12:25,:,:), t_ROYA(12:25,:), t_CRCO(12:25,:), rr_AL(12:25,:,:), rr_BI(12:25,:,:), rr_EA(12:25,:,:), rr_FR(12:25,:,:), rr_IP(12:25,:,:), rr_MD(12:25,:,:), rr_ME(12:25,:,:), rr_SC(12:25,:,:), rr_CRO(12:25,:,:), rr_ROYA(12:25,:), rr_CRCO(12:25,:)]=loading(1:14,model,met,reg,par,2,1);

[t_AL(26:33,:,:), t_BI(26:33,:,:), t_EA(26:33,:,:), t_FR(26:33,:,:), t_IP(26:33,:,:), t_MD(26:33,:,:), t_ME(26:33,:,:), t_SC(26:33,:,:), t_CRO(26:33,:,:), t_ROYA(26:33,:), t_CRCO(26:33,:), rr_AL(26:33,:,:), rr_BI(26:33,:,:), rr_EA(26:33,:,:), rr_FR(26:33,:,:), rr_IP(26:33,:,:), rr_MD(26:33,:,:), rr_ME(26:33,:,:), rr_SC(26:33,:,:), rr_CRO(26:33,:,:), rr_ROYA(26:33,:), rr_CRCO(26:33,:)]=loading(15:22,model,met,reg,par,3,1);

[t_AL(34:40,:,:), t_BI(34:40,:,:), t_EA(34:40,:,:), t_FR(34:40,:,:), t_IP(34:40,:,:), t_MD(34:40,:,:), t_ME(34:40,:,:), t_SC(34:40,:,:), t_CRO(34:40,:,:), t_ROYA(34:40,:), t_CRCO(34:40,:), rr_AL(34:40,:,:), rr_BI(34:40,:,:), rr_EA(34:40,:,:), rr_FR(34:40,:,:), rr_IP(34:40,:,:), rr_MD(34:40,:,:), rr_ME(34:40,:,:), rr_SC(34:40,:,:), rr_CRO(34:40,:,:), rr_ROYA(34:40,:), rr_CRCO(34:40,:)]=loading(15:21,model,met,reg,par,4,1);

[t_AL(41:50,:,:), t_BI(41:50,:,:), t_EA(41:50,:,:), t_FR(41:50,:,:), t_IP(41:50,:,:), t_MD(41:50,:,:), t_ME(41:50,:,:), t_SC(41:50,:,:), t_CRO(41:50,:,:), t_ROYA(41:50,:), t_CRCO(41:50,:), rr_AL(41:50,:,:), rr_BI(41:50,:,:), rr_EA(41:50,:,:), rr_FR(41:50,:,:), rr_IP(41:50,:,:), rr_MD(41:50,:,:), rr_ME(41:50,:,:), rr_SC(41:50,:,:), rr_CRO(41:50,:,:), rr_ROYA(41:50,:), rr_CRCO(41:50,:)]=loading(23:32,model,met,reg,par,5,1);

[t_AL(51:54,:,:), t_BI(51:54,:,:), t_EA(51:54,:,:), t_FR(51:54,:,:), t_IP(51:54,:,:), t_MD(51:54,:,:), t_ME(51:54,:,:), t_SC(51:54,:,:), t_CRO(51:54,:,:), t_ROYA(51:54,:), t_CRCO(51:54,:), rr_AL(51:54,:,:), rr_BI(51:54,:,:), rr_EA(51:54,:,:), rr_FR(51:54,:,:), rr_IP(51:54,:,:), rr_MD(51:54,:,:), rr_ME(51:54,:,:), rr_SC(51:54,:,:), rr_CRO(51:54,:,:), rr_ROYA(51:54,:), rr_CRCO(51:54,:)]=loading(33:36,model,met,reg,par,6,2);

[t_AL(55,:,:), t_BI(55,:,:), t_EA(55,:,:), t_FR(55,:,:), t_IP(55,:,:), t_MD(55,:,:), t_ME(55,:,:), t_SC(55,:,:), t_CRO(55,:,:), t_ROYA(55,:), t_CRCO(55,:), rr_AL(55,:,:), rr_BI(55,:,:), rr_EA(55,:,:), rr_FR(55,:,:), rr_IP(55,:,:), rr_MD(55,:,:), rr_ME(55,:,:), rr_SC(55,:,:), rr_CRO(55,:,:), rr_ROYA(55,:), rr_CRCO(55,:)]=loading(36,model,met,reg,par,7,1);

[t_AL(56,:,:), t_BI(56,:,:), t_EA(56,:,:), t_FR(56,:,:), t_IP(56,:,:), t_MD(56,:,:), t_ME(56,:,:), t_SC(56,:,:), t_CRO(56,:,:), t_ROYA(56,:), t_CRCO(56,:), rr_AL(56,:,:), rr_BI(56,:,:), rr_EA(56,:,:), rr_FR(56,:,:), rr_IP(56,:,:), rr_MD(56,:,:), rr_ME(56,:,:), rr_SC(56,:,:), rr_CRO(56,:,:), rr_ROYA(56,:), rr_CRCO(56,:)]=loading(37,model,met,reg,par,4,1);

[t_AL(57,:,:), t_BI(57,:,:), t_EA(57,:,:), t_FR(57,:,:), t_IP(57,:,:), t_MD(57,:,:), t_ME(57,:,:), t_SC(57,:,:), t_CRO(57,:,:), t_ROYA(57,:), t_CRCO(57,:), rr_AL(57,:,:), rr_BI(57,:,:), rr_EA(57,:,:), rr_FR(57,:,:), rr_IP(57,:,:), rr_MD(57,:,:), rr_ME(57,:,:), rr_SC(57,:,:), rr_CRO(57,:,:), rr_ROYA(57,:), rr_CRCO(57,:)]=loading(38,model,met,reg,par,3,1);

[t_AL(58,:,:), t_BI(58,:,:), t_EA(58,:,:), t_FR(58,:,:), t_IP(58,:,:), t_MD(58,:,:), t_ME(58,:,:), t_SC(58,:,:), t_CRO(58,:,:), t_ROYA(58,:), t_CRCO(58,:), rr_AL(58,:,:), rr_BI(58,:,:), rr_EA(58,:,:), rr_FR(58,:,:), rr_IP(58,:,:), rr_MD(58,:,:), rr_ME(58,:,:), rr_SC(58,:,:), rr_CRO(58,:,:), rr_ROYA(58,:), rr_CRCO(58,:)]=loading(38,model,met,reg,par,4,1);

[t_AL(59:62,:,:), t_BI(59:62,:,:), t_EA(59:62,:,:), t_FR(59:62,:,:), t_IP(59:62,:,:), t_MD(59:62,:,:), t_ME(59:62,:,:), t_SC(59:62,:,:), t_CRO(59:62,:,:), t_ROYA(59:62,:), t_CRCO(59:62,:), rr_AL(59:62,:,:), rr_BI(59:62,:,:), rr_EA(59:62,:,:), rr_FR(59:62,:,:), rr_IP(59:62,:,:), rr_MD(59:62,:,:), rr_ME(59:62,:,:), rr_SC(59:62,:,:), rr_CRO(59:62,:,:), rr_ROYA(59:62,:), rr_CRCO(59:62,:)]=loading(39:42,model,met,reg,par,2,1);

[t_AL(63:64,:,:), t_BI(63:64,:,:), t_EA(63:64,:,:), t_FR(63:64,:,:), t_IP(63:64,:,:), t_MD(63:64,:,:), t_ME(63:64,:,:), t_SC(63:64,:,:), t_CRO(63:64,:,:), t_ROYA(63:64,:), t_CRCO(63:64,:), rr_AL(63:64,:,:), rr_BI(63:64,:,:), rr_EA(63:64,:,:), rr_FR(63:64,:,:), rr_IP(63:64,:,:), rr_MD(63:64,:,:), rr_ME(63:64,:,:), rr_SC(63:64,:,:), rr_CRO(63:64,:,:), rr_ROYA(63:64,:), rr_CRCO(63:64,:)]=loading(40:41,model,met,reg,par,1,1);

[t_AL(65:69,:,:), t_BI(65:69,:,:), t_EA(65:69,:,:), t_FR(65:69,:,:), t_IP(65:69,:,:), t_MD(65:69,:,:), t_ME(65:69,:,:), t_SC(65:69,:,:), t_CRO(65:69,:,:), t_ROYA(65:69,:), t_CRCO(65:69,:), rr_AL(65:69,:,:), rr_BI(65:69,:,:), rr_EA(65:69,:,:), rr_FR(65:69,:,:), rr_IP(65:69,:,:), rr_MD(65:69,:,:), rr_ME(65:69,:,:), rr_SC(65:69,:,:), rr_CRO(65:69,:,:), rr_ROYA(65:69,:), rr_CRCO(65:69,:)]=loading(1:5,grell,met,reg,par,8,3);

[t_AL(70:73,:,:), t_BI(70:73,:,:), t_EA(70:73,:,:), t_FR(70:73,:,:), t_IP(70:73,:,:), t_MD(70:73,:,:), t_ME(70:73,:,:), t_SC(70:73,:,:), t_CRO(70:73,:,:), t_ROYA(70:73,:), t_CRCO(70:73,:), rr_AL(70:73,:,:), rr_BI(70:73,:,:), rr_EA(70:73,:,:), rr_FR(70:73,:,:), rr_IP(70:73,:,:), rr_MD(70:73,:,:), rr_ME(70:73,:,:), rr_SC(70:73,:,:), rr_CRO(70:73,:,:), rr_ROYA(70:73,:), rr_CRCO(70:73,:)]=loading(1:4,grell,met,reg,par,9,1);

[t_AL(74:75,:,:), t_BI(74:75,:,:), t_EA(74:75,:,:), t_FR(74:75,:,:), t_IP(74:75,:,:), t_MD(74:75,:,:), t_ME(74:75,:,:), t_SC(74:75,:,:), t_CRO(74:75,:,:), t_ROYA(74:75,:), t_CRCO(74:75,:), rr_AL(74:75,:,:), rr_BI(74:75,:,:), rr_EA(74:75,:,:), rr_FR(74:75,:,:), rr_IP(74:75,:,:), rr_MD(74:75,:,:), rr_ME(74:75,:,:), rr_SC(74:75,:,:), rr_CRO(74:75,:,:), rr_ROYA(74:75,:), rr_CRCO(74:75,:)]=loading(1:2,grell,met,reg,par,2,1);

seas=['DJF'; 'MAM'; 'JJA'; 'SON'];

[t_AL(76,:,:), t_BI(76,:,:), t_EA(76,:,:), t_FR(76,:,:), t_IP(76,:,:), t_MD(76,:,:), t_ME(76,:,:), t_SC(76,:,:), t_CRO(76,:,:), t_ROYA(76,:), t_CRCO(76,:), rr_AL(76,:,:), rr_BI(76,:,:), rr_EA(76,:,:), rr_FR(76,:,:), rr_IP(76,:,:), rr_MD(76,:,:), rr_ME(76,:,:), rr_SC(76,:,:), rr_CRO(76,:,:), rr_ROYA(76,:), rr_CRCO(76,:)]=loading(43,model,met,reg,par,4,1);

[t_AL(77,:,:), t_BI(77,:,:), t_EA(77,:,:), t_FR(77,:,:), t_IP(77,:,:), t_MD(77,:,:), t_ME(77,:,:), t_SC(77,:,:), t_CRO(77,:,:), t_ROYA(77,:), t_CRCO(77,:), rr_AL(77,:,:), rr_BI(77,:,:), rr_EA(77,:,:), rr_FR(77,:,:), rr_IP(77,:,:), rr_MD(77,:,:), rr_ME(77,:,:), rr_SC(77,:,:), rr_CRO(77,:,:), rr_ROYA(77,:), rr_CRCO(77,:)]=loading(44,model,met,reg,par,2,1);

%mark=['sk';'dg';'db';'^k';'^m';'^g';'^b';'^r';'pg';'>m';'or';'ob';'og';'om';'oc';'sc';'dc';'^c';'vc';'pc';'>c';'xc';'xm';'xg';'xb';'xr';'xk';'vm';'vb';'vr';'vg'];

save -mat7-binary all_in_one.mat *


