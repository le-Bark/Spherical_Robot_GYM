function T = control(state,dt)
%CONTROL Summary of this function goes here
%   Detailed explanation goes here
persistent e_masse;
persistent e_phi;
if isempty(e_masse)
    e_masse = 0;
    e_phi = 0;
end

%phi
% 
% d_phi = 0.6;
% ll_phi = 1;
% k_phi = 100;
% 
% e2_phi = e_phi;
% e_phi = state(3) - d_phi;
% de_phi = (e_phi - e2_phi) / dt;
% s_phi = de_phi + ll_phi*e_phi;
% d_masse = -k_phi * sign(s_phi);

%position masse
d_masse = 0.05;
ll_masse = 10;
k_masse = 5;

e2_masse = e_masse;
e_masse = state(4) - d_masse;
de_masse = (e_masse - e2_masse) / dt;
s_masse = de_masse + ll_masse * e_masse;

f_masse = -k_masse * sign(s_masse);






T = [0 0 0 f_masse]';
end

