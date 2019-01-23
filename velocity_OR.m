function [ OR_velo ] = velocity_OR( a, mu, E, e )
% Give the velocity vector

V = (sqrt(mu*a))/(a*(1-(e*cosd(E))));

OR_velo = [-V*sind(E); V*(sqrt(1-(e^2)))*cosd(E); 0];

end

