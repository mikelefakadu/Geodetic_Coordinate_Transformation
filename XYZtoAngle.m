function [ alpha, dec ] = XYZtoAngle( X,Y,Z )
%   converts XYZ coordinates to Angles
    
    alpha = RadtoDeg(atan(Y/X));
    dec = RadtoDeg(asin(Z));


end

