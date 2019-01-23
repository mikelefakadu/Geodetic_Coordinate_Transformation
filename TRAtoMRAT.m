function [ MRAT ] = TRAtoMRAT( E, dE, dxi, TRA )
% Transforming from TRA(tao) to MRA(tao)

X = -E - dE;
Y = -dxi;
Z = E;
MRAT = R1(-X)*R3(-Y)*R1(-Z)*TRA;


end

