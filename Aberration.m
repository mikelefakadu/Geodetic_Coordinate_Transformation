function [ Aa, Da ] = Aberration( alpha, dec )
%Calculates the aberration of the given alpha, dec on oct 15 2013

n=2456580.5;
L = 280.46 + 0.9856474 * n;
g = 357.528 + 0.9856003 * n;

lambda = L + 1.195 * sind(g) + 0.02 * sind(2*g);
X = 0.0172 * sin(lambda);
Y = -0.0158 * cos(lambda);
Z = -0.0068 * cos(lambda);

c = 173.14;

Aa = ((-X*sind(dec)) + (Y*cosd(alpha)))/(c*cosd(dec));
Da = ((-X*cosd(alpha)*sind(dec))-(Y*sind(alpha)*sin(dec))+ (Z*cosd(dec)))/c;

end

