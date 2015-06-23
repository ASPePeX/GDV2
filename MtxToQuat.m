function [ out ] = MtxToQuat( in )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if size(in) ~= 3
	error('Input must be a 3 by 3 matrix');
end

if abs(det(in) - 1) > eps
    error('Not a rotational matrix, determinant != 1');
end

if in*in' ~= eye(3)
    error('Matrix is not orthogonal');
end

phi = acos((trace(in)-1)/2);

Rx = 1/2 * (in(3,2)-in(2,3))/sin(phi);
Ry = 1/2 * (in(1,3)-in(3,1))/sin(phi);
Rz = 1/2 * (in(2,1)-in(1,2))/sin(phi);

if sqrt(Rx^2+Ry^2+Rz^2) ~= 1
    error('Not a rotational matrix, rotational vector != 1');
end

q = [cos(phi/2) Rx*sin(phi/2) Ry*sin(phi/2) Rz*sin(phi/2)];

out = q;

end

