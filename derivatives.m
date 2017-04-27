clear all; clc;
cc = [0.0551    0.1896   -1.1889    1.2861]; % third row of C(:,:,2)
alphas = [1:4] * 3;
n = length(cc);
uw = 0.97; 
uo = 5.95;
syms S s f ds t k;

for i = 1:n
    s = s + cc(i) * atan(alphas(i) * t);
end
s
ds = diff(s)
f = 1 - ds
S = s - t * ds
k = uw / uo * f / ds 
