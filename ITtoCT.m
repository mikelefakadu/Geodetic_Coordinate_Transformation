function [ CT ] = ITtoCT( yp, xp, IT )
%Transformation IT to CT 

CT = (R1(-yp))*(R2(-xp))*IT;

end
