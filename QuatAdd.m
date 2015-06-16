function [ out ] = QuatAdd( q1, q2 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

out = zeros(4,1);

out(1) = q1(1) + q2(1);
out(2) = q1(2) + q2(2);
out(3) = q1(3) + q2(3);
out(4) = q1(4) + q2(4);

end

