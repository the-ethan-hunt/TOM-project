function [ m ] = mass(ss,f,n,t,T,N1,N2,k)
%MASS Summary of this function goes here
%   Detailed explanation goes here
%   We will be calculating mass of flywheel according to the material
%   ss is shear stress, f is the percentage of frictional losses, n is
%   number of holes punched per hour, t is the time taken to punch each
%   hole, T is thickness of plate, N1 and N2 are maximum and minimum speeds
%   of flywheel and k is radius of gyration
%   Calculating work done per punching of hole
Wd= ss*T;

%   Calculating work not lost by friction
W = ((1-f)^-1)*Wd;

%   Total work required = Work required per hole * number of holes punched
%   per hour

Wt = W*n;
P= Wt/(3600*1000);

%   Calculating energy supplied during punching
E = P*1000*t;
e= W-E;

%   Calculating mass of flywheel   
mass= (1800*e)/((pi^2)*((N1^2)-(N2^2))*(k^2));
m=['The values are ', num2str(mass)];
disp(m);
end

