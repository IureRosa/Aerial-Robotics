clear;
close all;

addpath('utils');
addpath('trajectories');

controlhandle = @iurecontroller;

% Choose which trajectory you want to test with
% trajhandle = @traj_line;
trajhandle = @traj_sine;

[t, state] = simulation_2d(controlhandle, trajhandle);
