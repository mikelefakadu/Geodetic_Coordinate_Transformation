function [ AP ] = CTtoAP( GAST, yp, xp, CT )
% Transform from CT to AP

AP = R3(-GAST)*R1(yp)*R2(xp)*CT;

end

