function []=sistema(T)

view(50,40)
axis([-20 20 -20 20 -20 20]);

u=line([-20 20],[0 0],[0 0],'Color','black');%x
v=line([0 0],[-20 20],[0 0],'Color','black');%y
w=line([0 0],[0 0],[-20 20],'Color','black');%z

ux=T(1,1);
uy=T(2,1);
uz=T(3,1);
vx=T(1,2);
vy=T(2,2);
vz=T(3,2);
wx=T(1,3);
wy=T(2,3);
wz=T(3,3);
px=T(1,4);
py=T(2,4);
pz=T(3,4);
Sc=1;

line([px Sc*ux+px],[py Sc*uy+py],[pz Sc*uz+pz],'Color','blue','linewidth',2);
line([px Sc*vx+px],[py Sc*vy+py],[pz Sc*vz+pz],'Color','green','linewidth',2);
line([px Sc*wx+px],[py Sc*wy+py],[pz Sc*wz+pz],'Color','red','linewidth',2);

end