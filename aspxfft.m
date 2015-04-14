function [ FX ] = aspxfft( dim )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

N=dim;
x=(0:N-1);
FX=exp(-i*2*pi*x'*x/N);

end

