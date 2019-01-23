function [ IT ] = CTtoIT( yp, xp, CT )
%Transformation CT to IT 

IT = (R1(yp))*(R2(xp))*CT;

end

