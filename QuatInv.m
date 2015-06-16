function [ out ] = QuatInv( q )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

qkk = QuatKK(q);
qabs2 = QuatAbs(q)^2;

out = qkk / qabs2;

end

