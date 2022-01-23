close all;
clear;

% This is your controller
controlhandle = @iurecontroller;

% This is your trajectory generator
trajhandle = @iuretraj_generator;

evaluate(controlhandle, trajhandle);
