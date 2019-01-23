function [ CT ] = APtoCT( GAST, yp, xp, AP )
% Transform from AP to CT

CT = R3(GAST)*R1(-yp)*R2(-xp)*AP;


end

