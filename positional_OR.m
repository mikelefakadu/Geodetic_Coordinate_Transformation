function [ OR ] = positional_OR( ec, E, a )
% transforms the Orbital to XYZ

%OR = [((a*cosd(E))-(a*e)); (a*(1 - (e^2)^(1/2))*sind(E)); 0];

x = a*cosd(E) - a*ec;
y = a*(sqrt(1-(ec^2)))*sind(E);
z = 0;

OR = [x; y; z];

end

