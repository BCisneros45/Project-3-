% Bryan Cisneros
% Project 3_1

%Ask the user for three sets of (x,y) 
% coordinates that a parabola passes through.
x1 = input('Enter x1: ');
y1 = input('Enter y1: ');

x2 = input('Enter x2: ');
y2 = input('Enter y2: ');

x3 = input('Enter x3: ');
y3 = input('Enter y3: ');
% Solve a system of equations to determine the coefficients a, b, and c for
%  the equation for the parabola
A = [x1^2  x1  1;
     x2^2  x2  1;
     x3^2  x3  1];

b = [y1; y2; y3];

coeff = A/b;
a = coeff(1);
bcoef = coeff(2);
c = coeff(3);
% Display the equation for that parabola on the screen
fprintf('\nThe parabola passing through the three points is: \n)');
fprintf(' y = %.3f x^2 %+ .3f x %= .3f\n\n',a, bcoef, c);

x = -10:0.1:10;
y = a*x.^2+ bcoef*x + c;

%