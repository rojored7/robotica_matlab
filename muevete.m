function []=muevete(tetha1,tetha2)

for t1=0:0.5:tetha1
    clf
    Trx=RotaX(t1)
    sistema(Trx)
    drawnow
end 
for t2=0:0.5:tetha2
    clf
    Trz=Trx*RotaZ(t2)
    sistema(Trz)
    drawnow
end 
end