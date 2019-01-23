function [ LA ] = XYZtoLA( v, A )
% Returns the LA transformed Matrix given in XYZ

X = cos(v)*cos(A);
Y = cos(v)*sin(A);
Z = sin(v);

LA = [X;Y;Z];

end

