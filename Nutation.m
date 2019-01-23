function [ E, dE, dxi ] = Nutation ( JD )
% Gives back the nutation constants delta-xi and delta-E

d = JD - 2456292.5;
T = (JD - 2451545)/36525;
dxi = -0.0048*sind(233.6 - 0.0053*d) - 0.004*sind(197.7 + 1.971*d);
dE = 0.0026*cosd(233.6 - 0.053*d) + 0.002*cosd(197.7+1.971*d);
E = 23.439279444 - (0.613*T) - (5.09e-8*T^2) + (5.57e-7*T^3);

end

