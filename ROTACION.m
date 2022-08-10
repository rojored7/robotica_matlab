clc 
close all;
clear all;

for theta = 0:1:90
    
clf   
u=line([-1 1],[0 0],[0 0],'Color','black');
v=line([0 0],[-1 1],[0 0],'Color','black');
w=line([0 0],[0 0],[-1 1],'Color','black');
view(120,30);
grid on
hold on

Xv=1;
Yv=0;
Zv=0;

ux=1;
uy=0;
uz=0;
vx=0;
vy=cosd(theta);
vz=sind(theta);
wx=0;
wy=-sind(theta);
wz=cosd(theta);

x=[1;0;0];
y=[0;1;0];
z=[0;0;1];

        if Xv == 1
            Rx=[ux vx wx;...
                uy vy wy;...
                uz vz wz;]
            
            ut=Rx*x;
            vt=Rx*y;
            wt=Rx*z;
            
        elseif Yv == 1
            Ry=[vy vx vz;...
                uy ux uz;...
                wy wx wz;]
            
            ut=Ry*x;
            vt=Ry*y;
            wt=Ry*z;
            
        elseif Zv == 1
            
            Rz=[vy wy wx;...
                vz wz vx;...
                uz uy ux;]
            
            ut=Rz*x;
            vt=Rz*y;
            wt=Rz*z;
    
        else
           
        end


xx=line([0 ut(1)],[0 ut(2)],[0 ut(3)],'Color','red');
yy=line([0 vt(1)],[0 vt(2)],[0 vt(3)],'Color','green');
zz=line([0 wt(1)],[0 wt(2)],[0 wt(3)],'Color','blue');

drawnow

end