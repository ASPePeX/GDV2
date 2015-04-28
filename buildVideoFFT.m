function [ out ] = buildVideoFFT( in )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% Get image dimensions
% y = height
% x = width
% c = colors
% f = frames

[y, x, c, f] = size(in(:,:,:,:));

% build corresponding fourier matrix

fx = (0:x-1);

FX = exp(-i*2*pi*fx'*fx/x);

% step through every frame and calc the fourier of the image

for cs=0:1:c-1
    
end


out = FX;

end

