function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

kp = 1;
% kd = kp/100;

while s(1:1) < 1
    if s_des(1:1) == s(1:1)
        u = params.mass * params.gravity;
    else
        u = params.mass * params.gravity + kp*(s_des(1:1) - s(1:1));
    end

end

