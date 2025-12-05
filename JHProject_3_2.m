% A script to determine and plot position, velocity, and acceleration
% Create arrays for time and velocity variables
t = 0:12;
v = [0, 1, 1.8, 2.4, 2.6, 2.7, 2.6, 2.2, 2, 1.9, 1.8, 1.8, 1.8];
% Initial position is 0 meters
x0 = 0;

% Find acceleration by using central difference estimation of the
% derivative for the velocity function
n = length(t);
der = ((v(3:n)-v(1:n-2))./(t(3:n)-t(1:n-2)));

% Determine the position function by integrating the velocity function
vel = @(t) n./t;
position = integral(vel,0,12);

% PLot Velocity graph
subplot(2,2,1)
plot(t,v,t,v,'o:g')
grid on
title("Velocity over Time Graph")
xlabel("Time (s)")
ylabel("Velocity (m/s)")

% PLot Acceleration graph
subplot(2,2,2)
plot(t(2:n-1),der,t(2:n-1),der,'x:r')
grid on
title("Acceleration over Time Graph")
xlabel("Time (s)")
ylabel("Acceleration (m/s^2)")

% PLot Position graph
subplot(2,2,3)
plot(t,position,t,position,'s:b')
grid on
title("Position over Time Graph")
xlabel("Time (s)")
ylabel("Position (m)")

