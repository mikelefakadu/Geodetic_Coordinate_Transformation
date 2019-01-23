function [ AP ] = LAtoAP(lambda, phi, GAST, LA)
% Transforms from LA to AP

X = ((1/2)*RadtoDeg(pi)) - phi;
Y = RadtoDeg(pi)-lambda;
AP = R3(Y)*R2(-X)*P2()*R3(-GAST)*LA;

end
