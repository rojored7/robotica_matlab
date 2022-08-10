function [Rx]=RotaX(tetha)
Rx=[1 0 0 0;
    0 cosd(tetha) -sind(tetha) 0;
    0 sind(tetha) cosd(tetha) 0;
    0 0 0 1;]
end