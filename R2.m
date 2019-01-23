function [ AR2 ] = R2( theta )
%Rotational matrix R2
%   Rotational matrix in the direction of e2 or y

AR2 = [ cosd(theta) 0 -sind(theta); 0 1 0; sind(theta) 0 cosd(theta)];

end

