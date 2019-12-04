clc,clf, clear

% Import data
pathData = load('path_geo.txt');

plot(pathData(:,1),pathData(:,2))
title('Geometric path')

% theta = 0.1;
% A = [0 0 -cos(theta);
%      0 0 -sin(theta);
%      0 0 0          ];
% B = [-sin(theta) 0;
%      cos(theta)  0;
%      0           1];
% Q = diag([1 1 1]);
% R = diag([1 1]);
% K = lqr(A,B,Q,R)

A = [0 0.5 0;
     -0.5 0 0.5;
     0 0 0   ];
B = [1 0;
     0  0;
     0 1];
Q = diag([0.01 0.01 0.001]);
R = diag([1 1]);
K = lqr(A,B,Q,R)
