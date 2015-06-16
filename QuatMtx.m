function [ out ] = QuatMtx( q )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

a = q(1);
b = q(2);
c = q(3);
d = q(4);

E = [1 0,0 1];
I = [i 0,0 -i];
J = [0 1,-1 0];
K = [0 i,i 0];


out = E*a + I*b + J*c + K*d;    

end

