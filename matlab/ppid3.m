function x = ppid3(erreur,dt)
%CONTROL Summary of this function goes here
%   Detailed explanation goes here
persistent e;
persistent I;
if isempty(I) | isnan(I)
    I = 0;
end
if isempty(e) | isnan(e)
    e = 0;
end

kp = 8;
ki = 1;
kd = 0;

e2 = e;
e = erreur;
de = (e2 - e) / dt;
I = I + e * dt;

x = kp*e + ki * I + kd * de;
end