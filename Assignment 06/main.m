%% function for generalized cordinate 'r'
% from the figure : r^2= c^2 + h^2
% Therefore, first constraint equation is C1= c^2 + h^2-r^2=0 where c=3m
% and h=4m Therefore, the function becomes f(r)= 25- r^2

fun = @(r) 25 - r^2; 
dfun = @(r) -2*r; 
r0 = 4; 

% NewtonRaphson(fun, dfun, x0) 
[r, flag] = NewtonRaphson(fun, dfun, r0) 

%% function for generalized cordinate 'phi'
% from the figure : tan(phi)=h/c
% Therefore, second constraint equation is C2= ctan(phi)-h=0,  where c=3m
% and h=4m. Therefore, the function becomes f(phi)= 3tah(phi)-4

fun = @(phi) 3*tan(phi)-4; 
dfun = @(phi) 3*(sec(phi))^2; 
phi0 = pi/4; 

% NewtonRaphson(fun, dfun, x0) 
[phi, flag] = NewtonRaphson(fun, dfun, phi0) 