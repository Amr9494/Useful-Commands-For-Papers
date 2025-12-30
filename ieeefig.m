function [f,fig] = ieeefig(ratio)
%% IEEE Standard Figure Configuration - Version 1.3
% - Local scope (affects only this figure)
% - Manual margin control to fix xlabel clipping

%% 1. Figure Setup (Width & Height)
fig.k_scaling = 3;          
fig.ratio = ratio;      
fig.width = 8.89 * fig.k_scaling;
fig.hight = fig.width / fig.ratio;
fig.fontsiz = 8; 
fig.Fsiz = fig.fontsiz*fig.k_scaling;

%% 2. Figure Margins (The section you requested)
% These are in "units" (centimeters) relative to the scaled figure size.
% We increased bottom/left slightly to make sure labels appear.
fig.top = 0.5;      
fig.bottom = 4.2;   % Space for X-Label (was 3)
fig.left = 4.2;     % Space for Y-Label (was 3.5)
fig.right = 1;      

%% 3. Create the Figure Object
% We must create 'f' before we can apply the margin settings to it.
f = figure('Units', 'centimeters', ...
           'Position', [0 0 fig.width fig.hight], ...
           'PaperPositionMode', 'auto');

%% 4. Apply Margins to Axes Position
% This converts your centimeter margins into Normalized units (0 to 1)
% which MATLAB uses to place the inner axes box.
% Format: [left bottom width height]

axes_pos = [ ...
    fig.left / fig.width, ...                           % Left
    fig.bottom / fig.hight, ...                         % Bottom
    (fig.width - fig.left - fig.right) / fig.width, ... % Width
    (fig.hight - fig.bottom - fig.top) / fig.hight      % Height
];

% Apply ONLY to this figure (f), not globally (0)
set(f, 'DefaultAxesPosition', axes_pos);

%% 5. Other Visual Settings (Local)
set(f, 'DefaultLineLineWidth', 1*fig.k_scaling);
set(f, 'DefaultAxesLineWidth', 0.25*fig.k_scaling);
set(f, 'DefaultAxesFontName', 'Times New Roman');
set(f, 'DefaultAxesFontSize', fig.fontsiz*fig.k_scaling);
set(f, 'DefaultAxesUnits', 'normalized');
set(f, 'DefaultAxesColorOrder', get(0, 'factoryAxesColorOrder'));
set(f, 'DefaultAxesTickDir', 'out');

% Text & Legend
set(f, 'DefaultTextFontName', 'Times New Roman');
set(f, 'DefaultTextFontSize', fig.fontsiz*fig.k_scaling);
set(f, 'DefaultLegendFontName', 'Times New Roman');
set(f, 'DefaultLegendFontSize', fig.fontsiz*fig.k_scaling);
set(f, 'DefaultLegendLocation', 'southeast');
set(f, 'DefaultLegendBox', 'on');
set(f, 'DefaultLegendOrientation', 'vertical');

end
