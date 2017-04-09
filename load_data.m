function [t, S] = load_data(filename)

%LOAD_DATA
% Read data from excel file
%
% Input argument: filename
% filename: string
%
% Output argument: data
% data is an N by 2 matrix, where N is the number of time intervals.
% data[:, 1], the first column of data is time intervals.
% data[:, 2], the second column of data is saturation of water.

% Set default input arguments: filename
if nargin == 0
    filename = 'Fluid_Fractions_Produced_after_Breakthrough';
end

pore_volume = 29.39;
Sw_initial = 0.278;

% Read data from excel file
raw_data = xlsread(filename, 'Data', 'A1:D49');
t = raw_data(:, 1); % Time Interval
S = (cumsum(raw_data(:,3)) ./ pore_volume)  + Sw_initial;
% S = raw_data(:, 2) ./ (raw_data(:, 2) + raw_data(:, 3)); % Saturation of Water
end
