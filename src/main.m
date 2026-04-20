clc; clear; close all;

% =========================
% Sensor positions (x, y)
% =========================
sensors = [0 0;
           1 0;
           0 1];

% =========================
% True source position
% =========================
source = [0.5 0.7];

% =========================
% Speed of sound (m/s)
% =========================
c = 343;

% =========================
% Compute distances
% =========================
distances = sqrt(sum((sensors - source).^2, 2));

% =========================
% Time of Arrival (TOA)
% =========================
toa = distances / c;

disp('Time of Arrival (seconds):');
disp(toa);

% =========================
% Visualization
% =========================
figure;
plot(sensors(:,1), sensors(:,2), 'ro', 'MarkerSize', 10);
hold on;
plot(source(1), source(2), 'bx', 'MarkerSize', 12);

legend('Sensors', 'Source');
grid on;
title('Source Localization Setup');
xlabel('X');
ylabel('Y');