function [ IT ] = LAtoIT( lambda, phi, LA )
% Transforms from LA to IT given Latitude and Longtitude

X = (RadtoDeg(pi)-lambda);
Y = (0.5*RadtoDeg(pi)) - phi;
IT = R3(X)*R2(Y)*P2()*LA;

end

