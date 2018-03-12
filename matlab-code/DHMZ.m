clear all; close all; clc
load all_in_one
v={'T2m' 'R'};
load EOBSmean
mjed={'{\circ}C', 'mm/d'};
mark=['sk';'dg';'db';'^k';'^m';'^g';'^b';'^r';'pg';'>m';'or';'ob';'og';...
    'om';'oc';'sc';'dc';'^c';'vc';'pc';'>c';'<c';'xc';'xk';'xm';'xg';...
    'xg';'xg';'xb';'xc';'xr';'xr';'xr';'vm';'vb';'vr';'vg';'vm';'vb';...
    'vr';'vg';'hc';'hm'];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%BIAS & PERCENTILE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 for l=1:47
 x(l,:)=[61/115+(9*l/460):1:3+61/115+(9*l/460)];
 end
 
 for i=1:2
 for k=1:2
 for j=1:9
 f(i,k,j)=figure;
 
 for l=1:4
 o=gscatter(x([5],l)',eval([par{k} '_' reg{j} '([30],' int2str(l) ',' ...
     int2str(i) ')''']),['a']',mark(19,2)',mark(19,1)',[],'off'); hold on;
 h=gscatter(x([5],l)',eval([par{k} '_' reg{j} '([38],' int2str(l) ',' ...
     int2str(i) ')''']),['a']',mark([19],2)',mark([19],1)',[],'off'); hold on;
 set(o,'MarkerEdgeColor',[1 .6 0])
 for z=1:length(h)
 set(h(z),'MarkerFaceColor',[1 .6 0],'MarkerEdgeColor',[1 .6 0]);
 end
 end
 clear o
 
 for l=1:4
 o=gscatter(x(9,l)',eval([par{k} '_' reg{j} '(56,' int2str(l) ',' ...
 int2str(i) ')''']),['a']',[1 .6 0],'v',[],'off'); hold on;
 set(o,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[1 .6 0])
 h=gscatter(x(9,l)',eval([par{k} '_' reg{j} '(69,' int2str(l) ',' ...
 int2str(i) ')''']),['a']',[1 .6 0],'v',[],'off'); hold on;
 gscatter(x(9,l)',eval([par{k} '_' reg{j} '(69,' int2str(l) ',' ...
 int2str(i) ')''']),['a']','k','v',6,[]); hold on;
 set(h,'LineWidth',1.25);
 end
 clear h o
 
 for l=1:4
 gscatter(x(29:32,l)',eval([par{k} '_' reg{j} '(51:54,' int2str(l) ',' ...
     int2str(i) ')''']),['a' 's' 'd' 'f']',mark(34:37,2)',mark(34:37,1)',...
     [],'off'); hold on;
 h=gscatter(x(31:32,l)',eval([par{k} '_' reg{j} '([62 55],' int2str(l) ',' ...
     int2str(i) ')''']),['a' 's']',mark(36:37,2)',mark(36:37,1)',[],'off'); 
 hold on;
 for z=1:length(h)
 set(h(z), 'MarkerFaceColor',mark(35+z,2)');
 end
 end
 
clear h
for l=1:4
 h=gscatter(x(29:30,l)',eval([par{k} '_' reg{j} '([74 75],' int2str(l) ',' ...
     int2str(i) ')''']),['a' 's']',mark(34:35,2)',mark(34:35,1)',[],'off'); 
 hold on;
 for z=1:length(h)
 set(h(z), 'MarkerFaceColor',mark(33+z,2)');
 end
 end
  
 clear h
 for l=1:4
h=gscatter(x(33:36,l)',eval([par{k} '_' reg{j} '(65:68,' int2str(l) ',' ...
    int2str(i) ')''']),['a' 's' 'd' 'f']',mark(38:41,2)',mark(38:41,1)',...
    [],'off'); hold on;
gscatter(x(33:36,l)',eval([par{k} '_' reg{j} '(65:68,' int2str(l) ',' ...
    int2str(i) ')''']),['a' 's' 'd' 'f']',['k';'k';'k';'k']',...
    ['v';'v';'v';'v']',6,[]); hold on;
for z=1:length(h)
 set(h(z),'LineWidth',1.25);
end
 end

for l=1:4
h=gscatter(x(33:36,l)',eval([par{k} '_' reg{j} '(70:73,' int2str(l) ',' ...
    int2str(i) ')''']),['a' 's' 'd' 'f']',mark(38:41,2)',mark(38:41,1)',...
    [],'off'); hold on;
gscatter(x(33:36,l)',eval([par{k} '_' reg{j} '(70:73,' int2str(l) ',' ...
    int2str(i) ')''']),['a' 's' 'd' 'f']',['k';'k';'k';'k']',...
    ['v';'v';'v';'v']',6,[]); hold on; 
for z=1:length(h)
 set(h(z), 'MarkerFaceColor',mark(37+z,2)');
end
end

if i<2
 title([v{k} ' ' met{i} ' for ' reg{j} ' region'],'FontWeight','bold')
 else
 title([v{k} ' 95%-P for ' reg{j} ' region'],'FontWeight','bold')
 end
 
 switch i 
 case 1 
 switch k 
 case 1 
 set(gca,'xlim',[0.5 4.5],'xtick',[1.5:1:3.5],'XTicklabel',[],'FontWeight',...
 'bold','ylim',[-5 5])
 text([1:4]-0.15,zeros(1,4)-5.3,seas,'FontWeight','bold') 
 ylabel('T2m BIAS [K]','FontWeight','bold'); grid on
 for z=1:4
 text((z-.99)/4,0.96,['P0_{25}=' num2str(round(eval([par{k} ...
         '_mean_' reg{j} '(' num2str(z) ',1)'])*100)/100) mjed{k}],...
         'FontWeight','bold','FontSize',7,'Units','normalized')
 text((z-.99)/4,.9,['R0_{25}=' num2str(round(eval([par{k} ...
         '_mean_' reg{j} '(' num2str(z) ',2)'])*100)/100) mjed{k}],...
         'FontWeight','bold','FontSize',7,'Units','normalized')
 text((z-.45)/4,.96,['P0_{50}=' num2str(round(eval([par{k} ...
         '_mean_' reg{j} '(' num2str(z) ',3)'])*100)/100) mjed{k}],...
         'FontWeight','bold','FontSize',7,'Units','normalized')
 text((z-.45)/4,.9,['R0_{50}=' num2str(round(eval([par{k} ...
         '_mean_' reg{j} '(' num2str(z) ',4)'])*100)/100) mjed{k}],...
         'FontWeight','bold','FontSize',7,'Units','normalized')
 end
 case 2 
 set(gca,'xlim',[0.5 4.5],'xtick',[1.5:1:3.5],'XTicklabel',[],'ylim',...
     [-60 180],'FontWeight','bold') 
 text([1:4]-0.15,zeros(1,4)-66.5,seas,'FontWeight','bold') 
 ylabel('R BIAS [%]'); grid on
 for z=1:4
 text((z-.99)/4,0.96,['P0_{25}=' num2str(round(eval([par{k} ...
         '_mean_' reg{j} '(' num2str(z) ',1)'])*100)/100) mjed{k}],...
         'FontWeight','bold','FontSize',7,'Units','normalized')
 text((z-.99)/4,.9,['R0_{25}=' num2str(round(eval([par{k} ...
         '_mean_' reg{j} '(' num2str(z) ',2)'])*100)/100) mjed{k}],...
         'FontWeight','bold','FontSize',7,'Units','normalized')
 text((z-.45)/4,.96,['P0_{50}=' num2str(round(eval([par{k} ...
         '_mean_' reg{j} '(' num2str(z) ',3)'])*100)/100) mjed{k}],...
         'FontWeight','bold','FontSize',7,'Units','normalized')
 text((z-.45)/4,.9,['R0_{50}=' num2str(round(eval([par{k} ...
         '_mean_' reg{j} '(' num2str(z) ',4)'])*100)/100) mjed{k}],...
         'FontWeight','bold','FontSize',7,'Units','normalized')
 end
 end 
 case 2 
 switch k 
 case 1 
 set(gca,'xlim',[0.5 4.5],'xtick',[1.5:1:3.5],'XTicklabel',[],'FontWeight',...
 'bold','ylim',[0.5 6]) 
 text([1:4]-0.15,zeros(1,4)+.28,seas,'FontWeight','bold') 
 ylabel('T2m 95%-P [K]'); grid on 
 case 2 
 set(gca,'xlim',[0.5 4.5],'xtick',[1.5:1:3.5],'XTicklabel',[],'ylim',...
     [0 400],'FontWeight','bold') 
 text([1:4]-0.15,zeros(1,4)-12,seas,'FontWeight','bold') 
 ylabel('R 95%-P [%]'); grid on
 end 
 end 
  
 end
 end
 end
  
 for i=1:2
 for k=1:2
 for j=1:9
 saveas(f(i,k,j),[par{k} '_' met{i} '_' reg{j} '.eps'],'epsc2');
 end
 end
 end
  
 pause (5)
 close all; clear h
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%TAYLOR DIAG%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mark(22,:)=[];
H=[3 4;5 6];
S={'fld', 'tim'};
load EOBSdev.mat
for q=1:2
for i=1:4
for k=1:2
for j=1:9
f(i,k,j)=figure;

for zz=.5:.5:4
    if zz<1
       r=cos([0:0.01:pi/3/2+0.01])-sqrt(cos([0:0.01:pi/3/2+0.01]).^2-0.75); 
       mmpolar([0:0.01:pi/3/2+0.01],r,'b--'); hold on; 
       r=cos([0:0.01:pi/3/2+0.01])+sqrt(cos([0:0.01:pi/3/2+0.01]).^2-0.75); 
       mmpolar([0:0.01:pi/3/2+0.01],r,'b--');
    else
       r=cos(0:0.01:2*pi/3)+sqrt((cos(0:0.01:2*pi/3)).^2+zz^2-1); 
       mmpolar([0:0.01:2*pi/3],r,'b--'); hold on
    end
end

for l=[30 51:54] 
x44=eval([par{k} '_' reg{j} '(' int2str(l) ',' int2str(i) ',' int2str(H(...
    q,1)) ')']);
y44=eval([par{k} '_' reg{j} '(' int2str(l) ',' int2str(i) ',' int2str(H(...
    q,2)) ')']);
if l<12
    L=l;
elseif l>25 & l<34
    L=l-11;
elseif l>40
    L=l-18;
end     
taylor(x44,y44,mark(L,:),1,q,k);
end

for l=[38 55] 
x11=eval([par{k} '_' reg{j} '(' int2str(l) ',' int2str(i) ',' ...
    int2str(H(q,1)) ')']);
y11=eval([par{k} '_' reg{j} '(' int2str(l) ',' int2str(i) ',' ...
    int2str(H(q,2)) ')']);
if l<26
    L=l-11;
elseif l>33
    L=l-19;
end
h=taylor(x11,y11,mark(L,:),2,q,k);
end

x11=eval([par{k} '_' reg{j} '(' int2str(56) ',' int2str(i) ',' ...
    int2str(H(q,1)) ')']);
y11=eval([par{k} '_' reg{j} '(' int2str(56) ',' int2str(i) ',' ...
    int2str(H(q,2)) ')']);
h=taylor(x11,y11,'vm',2,q,k);

x11=eval([par{k} '_' reg{j} '(' int2str(62) ',' int2str(i) ',' ...
    int2str(H(q,1)) ')']);
y11=eval([par{k} '_' reg{j} '(' int2str(62) ',' int2str(i) ',' ...
    int2str(H(q,2)) ')']);
h=taylor(x11,y11,'vr',2,q,k);

for l=[65:68]
x11=eval([par{k} '_' reg{j} '(' int2str(l) ',' int2str(i) ',' ...
    int2str(H(q,1)) ')']);
y11=eval([par{k} '_' reg{j} '(' int2str(l) ',' int2str(i) ',' ...
    int2str(H(q,2)) ')']);
    L=l-32;
h=taylor(x11,y11,mark(L,:),2,q,k);
h=taylor(x11,y11,'vk',2,q,k);
end

x11=eval([par{k} '_' reg{j} '(' int2str(69) ',' int2str(i) ',' ...
    int2str(H(q,1)) ')']);
y11=eval([par{k} '_' reg{j} '(' int2str(69) ',' int2str(i) ',' ...
    int2str(H(q,2)) ')']);
h=taylor(x11,y11,'vm',2,q,k);

x11=eval([par{k} '_' reg{j} '(' int2str(69) ',' int2str(i) ',' ...
    int2str(H(q,1)) ')']);
y11=eval([par{k} '_' reg{j} '(' int2str(69) ',' int2str(i) ',' ...
    int2str(H(q,2)) ')']);
h=taylor(x11,y11,'vk',2,q,k);

for l=[70:75]
x11=eval([par{k} '_' reg{j} '(' int2str(l) ',' int2str(i) ',' ...
    int2str(H(q,1)) ')']);
y11=eval([par{k} '_' reg{j} '(' int2str(l) ',' int2str(i) ',' ...
    int2str(H(q,2)) ')']);
    L=l-37;
h=taylor(x11,y11,mark(L,:),2,q,k);
end

%%%%%
set(h(10),'MarkerEdgeColor',[1 .6 0]); 
set(h(15),'MarkerFaceColor',[1 .6 0],'MarkerEdgeColor',[1 .6 0]);
set(h(16),'MarkerFaceColor','g');
set(h(17),'MarkerFaceColor',[1 .6 0],'MarkerEdgeColor',[0 0 0]);
set(h(18),'MarkerFaceColor','r');
z=19:2:25
for l=1:length(z)
    set(h(z(l)),'LineWidth',1.25);    
end
set(h(27),'LineWidth',1.25); set(h(27),'MarkerEdgeColor',[1 .6 0])
z=29:32
for l=1:length(z)
    set(h(z(l)),'MarkerFaceColor',mark(36+l,2),'MarkerEdgeColor',[0 0 0]);
end
set(h(33),'MarkerFaceColor','m');
set(h(34),'MarkerFaceColor','b');
if q<2
    xlabel('RSV (Norm. st. dev.): radius','FontWeight','bold')
    text(-0.05,.2,'PACO (Spatial correlation): angle','FontWeight','bold',...
        'Rotation',90)
    text(0.8,1,['\sigma_{25km,71-00}^{EOBS}=' num2str(round(eval([par{k} ...
        '_stFld_' reg{j} '(' num2str(i) ',1)'])*100)/100) mjed{k}],'FontWeight','bold')
    text(0.8,0.94,['\sigma_{25km,89-08}^{EOBS}=' num2str(round(eval([par{k} ...
        '_stFld_' reg{j} '(' num2str(i) ',2)'])*100)/100) mjed{k}],'FontWeight','bold')
    text(0.8,.88,['\sigma_{50km,71-00}^{EOBS}=' num2str(round(eval([par{k} ...
        '_stFld_' reg{j} '(' num2str(i) ',3)'])*100)/100) mjed{k}],'FontWeight','bold')
    text(0.8,0.82,['\sigma_{50km,89-08}^{EOBS}=' num2str(round(eval([par{k} ...
        '_stFld_' reg{j} '(' num2str(i) ',4)'])*100)/100) mjed{k}],'FontWeight','bold')
else
    xlabel('RIAV (Norm. st. dev.): radius','FontWeight','bold')
    text(-0.1,.07,'TCOIAV (Temporal correlation): angle','FontWeight','bold',...
        'Rotation',120)
    text(0.8,1,['\sigma_{25km,71-00}^{EOBS}=' num2str(round(eval([par{k} ...
        '_stTim_' reg{j} '(' num2str(i) ',1)'])*100)/100) mjed{k}],'FontWeight','bold')
    text(0.8,0.94,['\sigma_{25km,89-08}^{EOBS}=' num2str(round(eval([par{k} ...
        '_stTim_' reg{j} '(' num2str(i) ',2)'])*100)/100) mjed{k}],'FontWeight','bold')
    text(0.8,.88,['\sigma_{50km,71-00}^{EOBS}=' num2str(round(eval([par{k} ...
        '_stTim_' reg{j} '(' num2str(i) ',3)'])*100)/100) mjed{k}],'FontWeight','bold')
    text(0.8,0.82,['\sigma_{50km,89-08}^{EOBS}=' num2str(round(eval([par{k} ...
        '_stTim_' reg{j} '(' num2str(i) ',4)'])*100)/100) mjed{k}],'FontWeight','bold')
end
text(0.01,0.97,reg{j},'FontWeight','bold');
text(0.5,1,['var: ' v{k}],'FontWeight','bold');
text(0.5,0.96,['seas: ' seas(i,:)],'FontWeight','bold');
end
end
end

ss={'DJF';'MAM';'JJA';'SON'};
for i=1:4
for k=1:2
for j=1:9
saveas(f(i,k,j),[S{q} '_' par{k} '_' reg{j} '_' ss{i} '.eps'],'epsc2')
end
end
end

pause (5)
close all

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%CRCO & ROYA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear h x
mark=['sk';'dg';'db';'^k';'^m';'^g';'^b';'^r';'pg';'>m';'or';'ob';'og';...
    'om';'oc';'sc';'dc';'^c';'vc';'pc';'>c';'<c';'xc';'xk';'xm';'xg';...
    'xg';'xg';'xb';'xc';'xr';'xr';'xr';'vm';'vb';'vr';'vg';'vm';'vb';...
    'vr';'vg';'hc';'hm'];
for l=1:47
x(l,:)=[61/115+(9*l/460):1:8+61/115+(9*l/460)];
end
 
par={'t_CRCO'; 't_ROYA'; 'rr_CRCO'; 'rr_ROYA'};
  
for i=1:4
f(i)=figure;
for l=1:9
    o=gscatter(x(5,l)',eval([par{i} '(30,' int2str(l) ')''']),['a']',...
        mark(19,2)',mark(19,1)',[],'off'); hold on;
    h=gscatter(x(5,l)',eval([par{i} '(38,' int2str(l) ')''']),['a']',...
        mark(19,2)',mark(19,1)',[],'off'); hold on;
    set(o,'MarkerEdgeColor',[1 .6 0])
    for z=1:length(h)
        set(h(z),'MarkerFaceColor',[1 .6 0],'MarkerEdgeColor',[1 .6 0]);
    end
end
 
clear h o

for l=1:9
    o=gscatter(x(9,l)',eval([par{i} '(56,' int2str(l) ')''']),['a']',...
        'm','v',[],'off'); 
    set(o,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[1 .6 0])
    hold on
    h=gscatter(x(9,l)',eval([par{i} '(69,' int2str(l) ')''']),['a']',...
        [1 .6 0],'v',[],'off'); hold on;
    gscatter(x(9,l)',eval([par{i} '(69,' int2str(l) ')''']),['a']','k',...
        'v',6,[]); hold on;
    set(h,'LineWidth',1.25);
end

clear h o
 
for l=1:9
gscatter(x(29:32,l)',eval([par{i} '(51:54,' int2str(l) ')''']),['a' 's' ...
    'd' 'f']',mark(34:37,2)',mark(34:37,1)',[],'off'); hold on;
h=gscatter(x(29:32,l)',eval([par{i} '([74 75 62 55],' int2str(l) ')''']),['a' ...
    's' 'w' 'e']',mark(34:37,2)',mark(34:37,1)',[],'off'); 
hold on;
for z=1:length(h)
set(h(z), 'MarkerFaceColor',mark(33+z,2)');
end
end
 
clear h

for l=1:9
h=gscatter(x(33:36,l)',eval([par{i} '(65:68,' int2str(l) ')''']),['a' 's' ...
    'd' 'f']',mark(38:41,2)',mark(38:41,1)',[],'off'); hold on;
gscatter(x(33:36,l)',eval([par{i} '(65:68,' int2str(l) ')''']),['a' 's' ...
    'd' 'f']',['k';'k';'k';'k']',['v';'v';'v';'v']',6,[]); hold on;
for z=1:length(h)
 set(h(z),'LineWidth',1.25);
end
end

for l=1:9
h=gscatter(x(33:36,l)',eval([par{i} '(70:73,' int2str(l) ')''']),['a' ...
    's' 'w' 'e']',mark(38:41,2)',mark(38:41,1)',[],'off'); 
hold on;
for z=1:length(h)
set(h(z), 'MarkerFaceColor',mark(37+z,2)','MarkerEdgeColor','k');
end
end
 
clear h


switch i 
case 1 
set(gca,'xlim',[0.5 9.5],'xtick',[1.5:1:8.5],'XTicklabel',[],'FontWeight','bold')
text([1:9]-0.15,zeros(1,9)+.938,reg,'FontWeight','bold') 
ylabel('T2m CRCO','FontWeight','bold'); grid on
case 2 
set(gca,'xlim',[0.5 9.5],'xtick',[1.5:1:8.5],'XTicklabel',[],'FontWeight','bold')
text([1:9]-0.15,zeros(1,9)+.78,reg,'FontWeight','bold') 
ylabel('T2m ROYA','FontWeight','bold'); grid on
case 3
set(gca,'xlim',[0.5 9.5],'xtick',[1.5:1:8.5],'XTicklabel',[],'FontWeight','bold')
text([1:9]-0.15,zeros(1,9)-1.05,reg,'FontWeight','bold') 
ylabel('R CRCO','FontWeight','bold'); grid on
case 4
set(gca,'xlim',[0.5 9.5],'xtick',[1.5:1:8.5],'XTicklabel',[],'FontWeight','bold')
text([1:9]-0.15,zeros(1,9)-.08,reg,'FontWeight','bold') 
ylabel('R ROYA','FontWeight','bold'); grid on
end 
end 
 
for i=1:4
    saveas(f(i),[par{i} '.eps'],'epsc2')
end
 
pause(5)
close all
