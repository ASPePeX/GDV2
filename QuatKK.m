function [ out ] = QuatKK( q )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

out = zeros(4,1);

a = q(1);
b = q(2);
c = q(3);
d = q(4);

out(1) = a;
out(2) = -b;
out(3) = -c;
out(4) = -d;

end

