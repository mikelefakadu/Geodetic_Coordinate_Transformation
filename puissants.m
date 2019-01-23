clc
a = 6378137;
b = 6356752.3142;
esqr = 0.006694380004260827;
epsi = 10e-10;  % epsilon
rho = 206265;
rho1= 57.27916667;
% point p parameters
phi_p = 44.92249778;
lamda_p = 65.29366444;
h_p = 155.52; % in meters
Mvd = 6.111111e-4; % meridian component vertical deflection
Pvd = 5.83333333e-4;  % prime vertical component vertical deflection

% Point q parameters
phi_q = 45.02277778;
lamda_q = 65.54805556;
h_q = 4192.2;  %in meters

Apq = 297.316425; %Astronomical Azimuth
Zpq = 80.74634167; %Zenith distance
Range = 25363.823; %spatial distance between P and Q

%Radius of curv. for point p
Np = (a^2) / sqrt(a^2*cosd(phi_p)^2 + b^2*sind(phi_p)^2);
Mp = (a*(1-esqr))/((1-esqr*sind(phi_p)^2))^1.5;

Nq = (a^2) / sqrt(a^2*cosd(phi_q)^2 + b^2*sind(phi_q)^2);
Mq = (a*(1-esqr))/((1-esqr*sind(phi_q)^2))^1.5;

deltaH = h_q-h_p;
alpha_pq = Apq - Pvd*tand(phi_p)-(Mvd*sind(Apq) - Pvd*cosd(Apq))*cotd(Zpq);
r_p = (Mp*Np)/(Mp*sind(alpha_pq)^2+Np*cosd(alpha_pq)^2); %Euler radii of curvature
r_q = (Mq*Nq)/(Mq*sind(alpha_pq)^2+Nq*cosd(alpha_pq)^2); %Euler radii of curvature
Rm = (r_p + r_q)/2;
lo = sqrt((Range^2-deltaH^2)/((1+(h_p/Rm))*(1+(h_q/Rm)))); %ellipsoidal chord length btw P and Q
Spq = 2*Rm*asind((lo)/(2*Rm)); %ellipsoidal distance


% Puissant's formula

% dphio = ((Spq/Np)*cosd(alpha_pq))-((Spq^2)/(2*Np^2)*tand(phi_p)*sind(alpha_pq)^2)-((Spq^3)/(6*Np^3))*cosd(alpha_pq)*sind(alpha_pq)^2*(1+3*tan(phi_p)^2);
dphio = phi_p - phi_q;
i = 1;
dphi(i) = ((Spq/Mp)*cosd(alpha_pq))-((Spq^2)/(2*Mp*Np)*tand(phi_p)*sind(alpha_pq)^2)-((Spq^3)/(6*Mp*Np^2))*cosd(alpha_pq)*sind(alpha_pq)^2*(1+3*tan(phi_p)^2)*(1-(3*esqr*cosd(phi_p)*sind(phi_p)*dphio)/(2*(1-esqr*sind(phi_p))));

difphi = 1;
%dphio = dphi(i);

while difphi > epsi
    dphi(i+1) = ((Spq/Mp)*cosd(alpha_pq))-((Spq^2)/(2*Mp*Np)*tand(phi_p)*sind(alpha_pq)^2)-((Spq^3)/(6*Mp*Np^2))*cosd(alpha_pq)*sind(alpha_pq)^2*(1+3*tan(phi_p)^2)*(1-(3*esqr*cosd(phi_p)*sind(phi_p)*dphi(i))/(2*(1-esqr*sind(phi_p))));
    %dphio = dphi(i);
    difphi = abs(dphi(i+1)-dphi(i));
    disp(difphi)
    i = i+1;
end
disp(i)
disp(dphi);
newphi_q = phi_p + dphi(end);

dlon = ((Spq*sind(alpha_pq)*secd(newphi_q))/(Nq))*(1-((Spq^2-(Spq^2)*(sind(alpha_pq)^2)*secd(newphi_q)^2)/(6*(Nq^2))))
newlamda = lamda_p + dlon;

phiave = (newphi_q + phi_p)/2;



dalpha = (dlon*sind(phiave)*secd((dphi(end))/(2)))+((dlon^3) / (12))*((sind(phiave)*secd((phiave)/(2)))-(sind(phiave)^3)*(secd(phiave/2)^3))

alpha_qp = alpha_pq + 180 + dalpha