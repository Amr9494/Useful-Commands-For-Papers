function [f,fig] = ieeefig(ratio)
%% IEEE Standard Figure Configuration - Version 1.0

% run this code before the plot command

%%
% According to the standard of IEEE Transactions and Journals: 

% Times New Roman is the suggested font in labels. 

% For a singlepart figure, labels should be in 8 to 10 points,
% whereas for a multipart figure, labels should be in 8 points.

% Width: column width: 8.8 cm; page width: 18.1 cm.

%% width & hight of the figure
fig.k_scaling = 3;          % scaling factor of the figure
% (You need to plot a figure which has a width of (8.8 * k_scaling)
% in MATLAB, so that when you paste it into your paper, the width will be
% scalled down to 8.8 cm  which can guarantee a preferred clearness.
fig.ratio = ratio;      % width:hight ratio of the figure

fig.width = 8.89 * fig.k_scaling;
fig.hight = fig.width / fig.ratio;
fig.fontsiz = 8; 
fig.Fsiz = fig.fontsiz*fig.k_scaling;
%% figure margins
fig.top = 0.5;  % normalized top margin
fig.bottom = 3;	% normalized bottom margin
fig.left = 3.5;	% normalized left margin
fig.right = 1;  % normalized right margin

%% set default figure configurations
set(0,'defaultFigureUnits','centimeters');
set(0,'defaultFigurePosition',[0 0 fig.width fig.hight]);

set(0,'defaultLineLineWidth',1*fig.k_scaling);
set(0,'defaultAxesLineWidth',0.25*fig.k_scaling);

% set(0,'defaultAxesGridLineStyle',':');
% set(0,'defaultAxesYGrid','on');
% set(0,'defaultAxesXGrid','on');

set(0,'defaultAxesFontName','Times New Roman');
set(0,'defaultAxesFontSize',fig.fontsiz*fig.k_scaling);

set(0,'defaultTextFontName','Times New Roman');
set(0,'defaultTextFontSize',fig.fontsiz*fig.k_scaling);

set(0,'defaultLegendFontName','Times New Roman');
set(0,'defaultLegendFontSize',fig.fontsiz*fig.k_scaling);

set(0,'defaultAxesUnits','normalized');
set(0,'defaultAxesPosition',[fig.left/fig.width fig.bottom/fig.hight (fig.width-fig.left-fig.right)/fig.width  (fig.hight-fig.bottom-fig.top)/fig.hight]);

set(0, 'defaultAxesColorOrder', get(0, 'factoryAxesColorOrder'));
set(0,'defaultAxesTickDir','out');

set(0,'defaultFigurePaperPositionMode','auto');

% you can change the Legend Location to whatever as you wish
set(0,'defaultLegendLocation','southeast');
set(0,'defaultLegendBox','on');
set(0,'defaultLegendOrientation','vertical');
figure
f = gcf; 