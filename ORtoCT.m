function [ CT ] = ORtoCT( xp, yp, GAST, omegaRA, i, omegaP, OR) 
%From OR to CT

CT = R1(-yp)*R2(-xp)*R3(GAST)*R3(-omegaRA)*R1(-i)*R3(-omegaP)*OR;

end

