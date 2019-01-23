phi1 = (43 + (51/60) + (31.3386/3600))*(pi/180);
lambda_1 = (360 - (280 +(21/60)+(42.7553/3600)))*(pi/180); 
zone =  17;
% Scale factor
K0 = 0.9996;
% False northing
N0 = 0; 
% False easting
E0 = 500000; 
% GRS ellipsoid parameters
a = 6378137;  
e2 = 0.006694380023; 
r = 6367449.14577; 
phi0 = 0; % latitude of the grid origin
lambda0 = 81*(pi / 180);  
% Ellipsoid constants
u0 = -0.005048250776; 
u2 = 0.000021259204;
u4 = -0.000000111423; 
u6 = 0.0000000000626;
% Rectifying latitude
w = phi1 + (sin(phi1)*cos(phi1))*(u0 + (cos(phi1))^2*(u2 + (cos(phi1))^2*(u4 + u6*(cos(phi1))^2)))
% Meridian distance
s = K0*w*r
s0 = 0;
% Radius of curvature
r2 = (K0*a) / sqrt(1 - (e2)*(sin(phi1))^2)
eeta = (e2 / (1-e2))*(cos(phi1)^2) 
%Defining terms R1 to R7
R1 = -r2
R2 = (1/2)*r*tan(phi1)
R3 = (1/6)*(1 - ((tan(phi1))^2) + eeta)
R4 = (1/12)*(5 - ((tan(phi1))^2) + eeta*(9 + (4*eeta)))
R5 = (1/120)*(5 - (18*((tan(phi1))^2))+((tan(phi1))^4) + eeta*(14 - 58*((tan(phi1))^2)))
R6 = (1/360)*(61 - (58*((tan(phi1))^2))+((tan(phi1))^4) + eeta*(270-330*((tan(phi1))^2)))
R7 = (1/5040)*(61 - (479*((tan(phi1))^2))+(179*((tan(phi1))^4)) - ((tan(phi1))^6))
% Last auxillary
l = (lambda_1 - lambda0)*cos(phi1)
E = E0 + R1*l*(1 + (l^2)*(R3 + (l^2)*(R5 + (l^2)*(R7*(l^2)))));
N = s - s0 + N0 + R2*(l^2)*(1 + (l^2)*(R4 + R6*(l^2)));
disp(E)
disp(N)
