function [ MRAT ] = MRATotoMRAT( z, theta, zeta, MRATo )
% Going from MRA(tao) to MRA(tao not)

MRAT = (R3(-z))*(R2(theta))*(R3(-zeta))*MRATo;


end

