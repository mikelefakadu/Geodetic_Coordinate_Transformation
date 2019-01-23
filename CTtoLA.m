function [ LA ] = CTtoLA( lambda, phi, CT )
%Transformation from CT to LA system

X = RadtoDeg(pi) - lambda;
Y = ((1/2)*RadtoDeg(pi))- phi;


LA = (R3(-X))*(R2(-Y))*P2()*CT;


end

