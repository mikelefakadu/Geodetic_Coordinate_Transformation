function [ Deg ] = DMStoDeg( DMS )
%Converts Degrees Minutes Seconds to Degrees

Deg = DMS(1) + (DMS(2))/60 + (DMS(3))/3600;

end

