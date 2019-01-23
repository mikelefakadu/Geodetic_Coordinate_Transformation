function [ CT ] = LAtoCT( lambda, phi, LA )
%Transformation from LA to CT system

X = RadtoDeg(pi) - lambda;
Y = ((1/2)*RadtoDeg(pi))- phi;

CT = (R3(X))*(R2(Y))*P2()*LA;


end

