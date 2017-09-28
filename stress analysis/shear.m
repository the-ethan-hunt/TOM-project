function [ X ] = shear( cs,ss,d,t)
%SHEAR Summary of this function goes here
%   Detailed explanation goes here
%   We are finding the the maximum punch force required to punch the holes
%   d is diameter of the hole, t is the thickness of the strip
%   ss is the ultimate shear strength of the given material
%   cs is the compressive strenght of the material
%   Assume diameter as 16 mm and thickness of plate as 5 mm

%   Calculating shear force
Fs = pi*d*t*ss;

%   Calculating the maximum punch force
Fmax = (pi/4)*(d^2)*cs;
X= ['the shear force required for punching(in N) is ',num2str(Fs),' while the maximum force appplied by punch(in N)  is ',num2str(Fmax)];
disp(X);

end

