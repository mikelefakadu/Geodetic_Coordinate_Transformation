function [ rad, cosrad ] = degtorad( x, y)

xrad = (x/180)*pi();
yrad = (y/180)*pi();

rad = [xrad yrad];

cosrad = [cos(xrad),cos(yrad)];

end

