function [ DMS ] = degrees2dms( Degree )
% given Degree to DMS

D = floor(Degree);
M = (Degree - D)*60;
Mm = floor(M);
S = (M - Mm)*60;

DMS = [D Mm S];

end

