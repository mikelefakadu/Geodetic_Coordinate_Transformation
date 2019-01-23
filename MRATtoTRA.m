function [ TRA ] = MRATtoTRA( E, dE, dxi, MRAT )
% Transforming from MRA(tao) to TRA(tao)

X = -E - dE;
Y = -dxi;
Z = E;
TRA = R1(X)*R3(Y)*R1(Z)*MRAT;

end
