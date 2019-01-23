function [ AR3 ] = R3( theta )
%Rotational matrix R3
%   Rotational matrix in the direction of e3 or z

AR3 = [ cosd(theta), sind(theta), 0; -sind(theta), cosd(theta), 0; 0, 0, 1];

end

