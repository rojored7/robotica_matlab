function [Ry]=RotaY(tetha)
Ry=[cosd(tetha) 0 sind(tetha) 0;
    0 1 0 0;
    -sind(tetha) 0  cosd(tetha) 0;
    0 0 0 1;]
end