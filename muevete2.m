function []=muevete2(DX,tetha2,tetha1)

for DDX=0:0.1:DX
    clf
    TTx=TraX(DDX)
    sistema(TTx)
    drawnow
end 
for t2=0:0.5:tetha2
    clf
    Trz=RotaZ(t2)*TTx
    sistema(Trz)
    drawnow
end 

for t1=0:0.5:tetha1
    clf
    Trx=Trz*RotaX(t1)
    sistema(Trx)
    drawnow
end 

end