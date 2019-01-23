function [ AP ] = TRAtoAP( alpha, dec )
%Transform from TRA to AP given Right Ascenssion and Declination

[ Ap, Dp] = Parallax(alpha,dec);
[ Aa, Da] = Aberration(alpha, dec);
Alphanew = (Ap + Aa) + alpha;
Decnew = (Dp + Da) + dec;

X = cos(Alphanew)*cos(Decnew);
Y = cos(Decnew)*sin(Alphanew);
Z = sin(Decnew);

AP = [X;Y;Z];


end