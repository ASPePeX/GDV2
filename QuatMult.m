function [ out ] = QuatMult( q1, q2 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

out = zeros(4,1);

a1 = q1(1);
a2 = q2(1);
b1 = q1(2);
b2 = q2(2);
c1 = q1(3);
c2 = q2(3);
d1 = q1(4);
d2 = q2(4);

out(1) = a1*a2 - (b1*b2 + c1*c2 + d1*d2);
out(2) = (b1*a2 + a1*b2 - d1*c2 + c1*d2);
out(3) = (c1*a2 + d1*b2 + a1*c2 - b1*d2);
out(4) = (d1*a2 - c1*b2 + b1*c2 + a1*d2);

end

