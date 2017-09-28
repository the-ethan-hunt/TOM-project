function [X] = flywheel(E,n,t,N1,N2,k)
%FLYWHEEL Summary of this function goes here

%   Detailed explanation goes here
%   We will be calculating the power rating and the mass of the flywheel
%   required in kgs for a punching press or riveting operation

%   Here E is the energy required for punching in N-m
%   n is the number of holes to be punched or riveted per hour
%   t is the time required to punch or rivet one hole in sec

%   N1 and N2 are the maximum and minimum speed of the flywheel
%   respectively in rpm
%   k is the radius of gyration of the wheel in meters

P= E*(n/3600);
%   Where P is the power required

E2= P*t;
%   Where E2 is the energy supplied by the motor during the period

e=E-E2;
%   Where e is the fluctuation of energy of the flywheel

mass= (1800*e)/((pi^2)*((N1^2)-(N2^2))*(k^2));

X=['The power rating of the machine(in kilowatts) should be ', num2str(P), ' and mass of flywheel(in kg) should be ' , num2str(mass) ];
disp(X);

end

