function [Rz]=RotaZ(tetha)
Rz=[cosd(tetha) -sind(tetha) 0 0;
    sind(tetha) cosd(tetha) 0 0;
    0 0 1 0;
    0 0 0 1;]
end