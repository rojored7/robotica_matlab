function []=muevete3()

for DDY=0:0.1:10
    clf
    TTy1=TraY(DDY)
    sistema(TTy1)
    drawnow
end
for t1=0:1:180
    clf
    Trz1=TTy1*RotaZ(t1)
    sistema(Trz1)
    drawnow
end
for DDZ=0:0.1:3
    clf
    TTz1=TraZ(DDZ)*Trz1
    sistema(TTz1)
    drawnow
end
for DD=0:0.1:5
    DDX=DD-2*DD;
    clf
    TTx1=TraX(DDX)*TTz1
    sistema(TTx1)
    drawnow
end
for t2=0:1:90
    clf
    Trz2=TTx1*RotaZ(t2)
    sistema(Trz2)
    drawnow
end
for t3=0:1:90
    clf
    Try1=Trz2*RotaY(t3)
    sistema(Try1)
    drawnow
end
for DDX=0:0.1:5 
    clf
    TTx2=TraX(DDX)*Try1
    sistema(TTx2)
    drawnow
end
for DDT=0:0.1:5 
    DDT=DDT-2*DDT;
    clf
    TTy2=TraY(DDT)*TTx2
    sistema(TTy2)
    drawnow
end
for DDZ=0:0.1:7 
    clf
    TTz2=TraZ(DDZ)*TTy2
    sistema(TTz2)
    drawnow
end
for t4=0:1:90
    clf
    Trx1=TTz2*RotaX(t4)
    sistema(Trx1)
    drawnow
end
end 