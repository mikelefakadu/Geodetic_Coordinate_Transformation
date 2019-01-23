function [ AP ] = ITtoAP( GAST, IT )
%Going from IT to AP coordinate system.

AP = R3(-GAST)*IT;

end

