function [ u1, u2 ] = controller(~, state, des_state, params)
%CONTROLLER  Controller for the planar quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [y; z], state.vel = [y_dot; z_dot], state.rot = [phi],
%   state.omega = [phi_dot]
%
%   des_state: The desired states are:
%   des_state.pos = [y; z], des_state.vel = [y_dot; z_dot], des_state.acc =
%   [y_ddot; z_ddot]
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls


% g = params.gravity;
% m = params.mass;
% Ixx = params.Ixx;
% l = params.arm_length;
% minF = params.minF;
% maxF = params.maxF;
% 
% yz = state.pos;
% yz_dot = state.vel;
% phi = state.rot;
% phi_dot = state.omega;
% 
% yzd = des_state.pos;
% yzd_dot = des_state.vel;
% yzd_ddot = des_state.acc;
% 
% kpz = 80;
% kvz = 20;
% 
% kpy = 20;
% kvy = 5;
% 
% kpo = 1000;
% kvo = 10;
% 
% u1 = 0;
% u2 = 0;
% 
% % FILL IN YOUR CODE HERE
% 
% u1 = m*(g + yzd_ddot(2) + kvz*(yzd_dot(2)-yz_dot(2)) + kpz*(yzd(2)-yz(2)));
% 
% phic_dot = 0;
% phic_ddot = 0;
% phic = (-1.0/g)*(yzd_ddot(1) + kvy*(yzd_dot(1)-yz_dot(1)) + kpy*(yzd(1)-yz(1)));
% u2 = Ixx*(phic_ddot + kvo*(phic_dot-phi_dot) + kpo*(phic-phi));


u1 = 0;
u2 = 0;

kvz=5;
kpz=400;
kvphi=20;
kpphi=1225;
kvy=5;
kpy=20;

g = params.gravity;
m = params.mass;
Ixx = params.Ixx;


% FILL IN YOUR CODE HERE

u1 = m*(params.gravity ...
    + des_state.acc(2) ...
    + kvz*(des_state.vel(2)-state.vel(2)) ...
    + kpz*(des_state.pos(2)-state.pos(2)));

phi_c = -1/g*(des_state.acc(1) ...
    + kvy*(des_state.vel(1)-state.vel(1)) ...
    + kpy*(des_state.pos(1)-state.pos(1)));

u2 = Ixx*(0 ...
    + kvphi*(0-state.omega) ...
    + kpphi*(phi_c-state.rot));


end

