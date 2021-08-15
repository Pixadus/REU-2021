# Files for the BSA 2021 REU

This research experience targeted the observation and analysis of fibrils within the solar chromosphere. Here, we have a collection of the scripts used to achieve this. 

## Usage
There is a general flow you might follow. Assuming you have an image of solar features you want to trace handy in a .fits or .sav file format:

1. Use [2-Python-Workspace/Curve-Tracing](2-Python-Workspace/Curve-Tracing/) to create a "control set" of manually-traced lines. 
2. Run OCCULT-2 on your image file. Compare with manual tracing. See [Markus Aschwanden's tutorial here](https://www.lmsal.com/~aschwand/software/tracing/tracing_tutorial1.html) on how to do this. Make sure to select __MJASTERO__ in the "Packages" section. 
3. Optimize OCCULT-2 parameters. See [1-IDL-Workspace/auto_run.pro](1-IDL-Workspace/auto_run.pro) for a loop to quickly create datasets with different parameters, and see [2-Python-Workspace/Histogram/](2-Python-Workspace/Histogram/) to give meaning to these datasets. 
4. Analyze the optimized OCCULT-2 dataset in [2-Python-Workspace/Mapping/](2-Python-Workspace/Mapping/). Use the file mapping_results.csv in [2-Python-Workspace/Analysis/] to compare found parameters. 

See each sub-directory for documentation on each module. 