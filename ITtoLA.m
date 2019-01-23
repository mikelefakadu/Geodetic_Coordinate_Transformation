function [ LA ] = ITtoLA( lambda, phi, IT )
% Transforms from IT to LA given Latitude and Longtitude

X = (RadtoDeg(pi)-lambda);
Y = (0.5*RadtoDeg(pi)) - phi;

LA = R3(-X)*R2(-Y)*P2()*IT;

end

