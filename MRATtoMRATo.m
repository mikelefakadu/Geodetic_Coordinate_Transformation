function [ MRATo ] = MRATtoMRATo( z, theta, xi, MRAT )
% Going from MRA(tao not) to MRA(tao)

MRATo = (R3(z))*(R2(-theta))*(R3(xi))*MRAT;

end

