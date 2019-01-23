function [ LA ] = APtoLA( lambda, phi, GAST, AP)
% Transforms from AP to LA

X = ((1/2)*RadtoDeg(pi)) - phi;
Y = RadtoDeg(pi)-lambda;
LA = R3(-Y)*R2(X)*P2()*R3(GAST)*AP;

end

