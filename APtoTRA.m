function [ TRA ] = APtoTRA( alpha, dec )
%Transform from AP to TRA given Right Ascenssion and Declination

[ Ap, Dp] = Parallax(alpha,dec);
[ Aa, Da] = Aberration(alpha, dec);
Alphanew = (Ap + Aa) - alpha;
Decnew = (Dp + Da) - dec;

X = cos(Alphanew)*cos(Decnew);
Y = cos(Decnew)*sin(Alphanew);
Z = sin(Decnew);

TRA = [X;Y;Z];


end

