function [t, S] = load_data(filename)

%LOAD_DATA
% Read data from excel file
%
% Input argument: filename
% filename: string
%
% Output argument: t, S
% t: the cumulative number of pore volumes injected.
% S: the average saturation of water.

% Set default input arguments: filename
if nargin == 0
    filename = 'Fluid_Fractions_Produced_after_Breakthrough';
end

pore_volume = 29.39; % Pore volume of the core
Sw_initial = 0.278; % Initial water saturation of the core
Vo_initial = 2.022; % Volume of oil produced at breakthrough

% Read data from excel file
raw_data = xlsread(filename, 'Data', 'A1:D49');
t = (cumsum(sum(raw_data(:, 2:3), 2)) + Vo_initial) / pore_volume; % The cumulative number of pore volumes injected
S = (cumsum(raw_data(:,3)) +  Vo_initial) / pore_volume  + Sw_initial; % The average of saturation of water at t
end
