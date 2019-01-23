function [ Ap , Dp ] = Parallax( alpha, dec )
% Parallax 
% Given is the alpha and dec of AP
% convert it back to 

n=2456580.5;
L = 280.46 + 0.9856474 * n;
g = 357.528 + 0.9856003 * n;

lambda = L + 1.195 * sind(g) + 0.02 * sind(2*g);
X = 0.0172 * sin(lambda);
Y = -0.0158 * cos(lambda);
Z = -0.0068 * cos(lambda);

pie = 0.53;
Ap = ((pie) / (15 * cosd(dec))) * ((X * cosd(alpha))...
    - (Y* cosd(alpha)));
Dp = (pie*((X*cosd(alpha)*sind(dec)) + (Y * sind(alpha) * sind(dec)) ...
    - (Z*cos(dec))));


end

