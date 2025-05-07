# Latex 

- `\usepackage{microtype}` : to avoid single word at the end of the paragraph. It also enhances the spaces between words
- `\captionsetup{belowskip=-4pt}` : to adjust the spacing after the caption. can be used globally or before the caption in any figure
- To have the journal name abbreviated as indented in the IEEE papers, you should use 
	`\bibliographystyle{IEEEtran}`
	`\bibliography{IEEEabrv,library}`
	The IEEEabrv.bst has some macros for each journal, you should use these macros instead of the journal name.
	Ex: `IEEE Transactions on Magnetics` should be written as `IEEE_J_MAG` and it will be resolved automatically while building 
- `\renewcommand{\arraystretch}{1}` : for table cell width control %% default value is 1 %%

# Others
- Use `ieeefig(ratio)` to generate figures from MATLAB precisely sized for IEEE templates
	`\[figg,fff] = ieeefig(ratio)` and ratio is a number, i.e. 2
- export graphics using `exprotgraphics(figg,'file_name.extention_you_like'` pdf or png ... etc. This command makes every thing you need and makes also the crop for the figure. 
- Use `ZoomPlot` to make nice and fast zooms in your figures [ZoomPlot - File Exchange - MATLAB Central](https://se.mathworks.com/matlabcentral/fileexchange/93845-zoomplot)
