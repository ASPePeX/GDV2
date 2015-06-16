function [ out ] = QuatToMtx( phi, Rx, Ry, Rz )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

exec = false;

if nargin == 2
    Ry = Rx(2);
    Rz = Rx(3);
    Rx = Rx(1);
    
    exec = true;
end

if nargin == 4
    exec = true;
end


if exec == true
    out = zeros(3);

    out(1,1) =       cos(phi) + Rx^2  * (1-cos(phi));
    out(1,2) = -Rz * sin(phi) + Rx*Ry * (1-cos(phi));
    out(1,3) =  Ry * sin(phi) + Rx*Rz * (1-cos(phi));

    out(2,1) =  Rz * sin(phi) + Rx*Ry * (1-cos(phi));
    out(2,2) =       cos(phi) + Ry^2  * (1-cos(phi));
    out(2,3) = -Rx * sin(phi) + Ry*Rz * (1-cos(phi));

    out(3,1) = -Ry * sin(phi) + Rx*Rz * (1-cos(phi));
    out(3,2) =  Rx * sin(phi) + Ry*Rz * (1-cos(phi));
    out(3,3) =       cos(phi) + Rz^2  * (1-cos(phi));

end
end

