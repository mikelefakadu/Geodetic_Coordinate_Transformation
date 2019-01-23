function [ E ] = MRATotoE( MRATo )
%Transforms from MRA(To) to E

epsilon = 23.4356583168; 
E = R1(-epsilon)*MRATo;

end

