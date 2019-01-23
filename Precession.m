function [ Z, theta, zeta ] = Precession ( JD )
% Returns the Precession constants from the given Julien Date

T = (JD - 2451545)/36525;
% Znot = (-7.362625e-4) + (0.640576944*T) + (3.034374444e-4*T.^2) ...
%     + (5.07325e-6 * T.^3) - (7.943333333e-9*T.^4) ...
%    - (8.066666667e-11*T.^5);

Znot = -(2.650545) + (2306.077*T) + 1.0927348*T^2 + 0.0182637*T^3 ...
     - ((28.596e-6)*(T^4)) - (2.904e-7)*(T^5);

thetanot = (2004.191903*(T)) - (0.4294934*(T^2)) - (0.04182264*(T^3)) ...
    - ((7.089e-6) * T^4) - ((1.274e-7) * (T^5));

zetanot = 2.650545 + (2306.083227*T) + (0.2988499*T^2) ...
    + (0.01801828 * T^3) - (5.971e-6 * T^4) - (3.173e-7 * T^5);

Z = SectoDegrees(Znot);
theta = SectoDegrees(thetanot);
zeta = SectoDegrees(zetanot);

end

