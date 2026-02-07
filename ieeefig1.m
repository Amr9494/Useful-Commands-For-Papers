function [figg,config] = ieeefig1(ratio)
%% IEEE Standard Figure Configuration - Version 1.3
% - Local scope (affects only this figure)
% - Manual margin control to fix xlabel clipping

%% 1. Figure Setup (Width & Height)
config.k_scaling = 3;          
config.ratio = ratio;      
config.width = 8.89 * config.k_scaling;
config.hight = config.width / config.ratio;
config.fontsiz = 8; 
config.Fsiz = config.fontsiz*config.k_scaling;

%% 2. Figure Margins (The section you requested)
% These are in "units" (centimeters) relative to the scaled figure size.
% We increased bottom/left slightly to make sure labels appear.
config.top = 0.5;      
config.bottom = 4.2;   % Space for X-Label (was 3)
config.left = 4.2;     % Space for Y-Label (was 3.5)
config.right = 1;      

%% 3. Create the Figure Object
% We must create 'f' before we can apply the margin settings to it.
figg = figure('Units', 'centimeters', ...
           'Position', [0 0 config.width config.hight], ...
           'PaperPositionMode', 'auto');

%% 4. Apply Margins to Axes Position
% This converts your centimeter margins into Normalized units (0 to 1)
% which MATLAB uses to place the inner axes box.
% Format: [left bottom width height]

axes_pos = [ ...
    config.left / config.width, ...                           % Left
    config.bottom / config.hight, ...                         % Bottom
    (config.width - config.left - config.right) / config.width, ... % Width
    (config.hight - config.bottom - config.top) / config.hight      % Height
];

% Apply ONLY to this figure (f), not globally (0)
set(figg, 'DefaultAxesPosition', axes_pos);

%% 5. Other Visual Settings (Local)
set(figg, 'DefaultLineLineWidth', 1*config.k_scaling);
set(figg, 'DefaultAxesLineWidth', 0.25*config.k_scaling);
set(figg, 'DefaultAxesFontName', 'Times New Roman');
set(figg, 'DefaultAxesFontSize', config.fontsiz*config.k_scaling);
set(figg, 'DefaultAxesUnits', 'normalized');
set(figg, 'DefaultAxesColorOrder', get(0, 'factoryAxesColorOrder'));
set(figg, 'DefaultAxesTickDir', 'out');

% Text & Legend
set(figg, 'DefaultTextFontName', 'Times New Roman');
set(figg, 'DefaultTextFontSize', config.fontsiz*config.k_scaling);
set(figg, 'DefaultLegendFontName', 'Times New Roman');
set(figg, 'DefaultLegendFontSize', config.fontsiz*config.k_scaling);
set(figg, 'DefaultLegendLocation', 'southeast');
set(figg, 'DefaultLegendBox', 'on');
set(figg, 'DefaultLegendOrientation', 'vertical');

end