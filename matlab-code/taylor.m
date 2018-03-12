function h=taylor(x,y,mark,z,l,k)
switch l
    case 1
        l=[0 pi/2];
        switch k
            case 1
                k=3;
            case 2
                k=5;
        end
        lab={'0';'0.2';'0.4';'0.6';'0.7';'0.8';'0.9';'0.95';'0.99'};
    case 2
        l=[0 2*pi/3];
        k=3.5;
        lab={'-0.4';'-0.2';'0';'0.2';'0.4';'0.6';'0.7';'0.8';'0.9';...
            '0.95';'0.99'};
end

tick=acos([0 .2 .4 .6 .7 .8 .9 .95 .99]);

if z<2
mmpolar(acos(x),y,mark,'RLimit',[0 k],'TLimit',l,'RTickAngle',[0.01],...
    'RTickOffset',0,'RTickLabelValign','top','TTickValue',[fliplr(180-...
    rad2deg(tick(2:end))) rad2deg(tick)],'TTickLabel',lab);hold on;
else
h=mmpolar(acos(x),y,mark,'RLimit',[0 k],'TLimit',l,'RTickAngle',[0.01],...
    'RTickOffset',0,'RTickLabelValign','top','TTickValue',[fliplr(180-...
    rad2deg(tick(2:end))) rad2deg(tick)],'TTickLabel',lab);hold on;
end
end