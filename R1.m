function [ AR1 ] = R1( theta )
%Rotational matrix R1
%   Rotational matrix in the direction of e1 or x

AR1 = [ 1, 0, 0; 0, cosd(theta), sind(theta); 0, -sind(theta), cosd(theta)];

end

