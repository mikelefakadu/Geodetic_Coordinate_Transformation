function [ AP ] = ORtoAP( omegaRA, i, omegaP, OR )
% OR to AP

AP = R3(-omegaRA)*R1(-i)*R3(-omegaP)*OR;

end

