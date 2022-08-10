function [T03]=RPP(t1,d2,d3)

T0=[1 0 0 0;
    0 1 0 0;
    0 0 1 0;
    0 0 0 1];
T01=RotaZ(t1)
T12=TraZ(d2)*TraY(5)*RotaY(90)
T23=TraZ(d3)

T02=T01*T12
T03=T02*T23

sistema(T0)
sistema(T01)
sistema(T02)
sistema(T03)

PL1=TraZ(d2);

P0x=T0(1,4);
P0y=T0(2,4);
P0z=T0(3,4);

PL1x=PL1(1,4);
PL1y=PL1(2,4);
PL1z=PL1(3,4);

line([P0x PL1x],[P0y PL1y],[P0z PL1z])

PL2x=T12(1,4);
PL2y=T12(2,4);
PL2z=T12(3,4);

line([PL1x PL2x],[PL1y PL2y],[PL1z PL2z])

PL3x=T02(1,4);
PL3y=T02(2,4);
PL3z=T02(3,4);

line([PL2x PL3x],[PL2y PL3y],[PL2z PL3z])

PL4x=T03(1,4);
PL4y=T03(2,4);
PL4z=T03(3,4);

line([PL3x PL4x],[PL3y PL4y],[PL3z PL4z])

end
