function [ AP ] = AngletoXYZ( alpha, dec )
%Converts XYZ to AP
%   Using formula 

X = cos(alpha)*cos(dec);
Y = cos(dec)*sin(alpha);
Z = sin(dec);

AP = [X;Y;Z];


end

