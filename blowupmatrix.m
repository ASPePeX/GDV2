function [ output_args ] = blowupmatrix( inM, t )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

mtx = zeros(t);

[oW, oH] = size(inM);

offsetW = oW/2 - t/2;
offsetH = oH/2 - t/2;

for X=0:oW
    for Y=0:oH
       
        mtx(offsetW + X, offsetH + Y) = inM(X,Y); 
        
    end
end

output_args = mat;

end

