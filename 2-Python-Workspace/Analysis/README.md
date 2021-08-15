# Analysis

This script is designed to work with the results from [../Mapping/](../Mapping/). It will generate 3 output images in the [results/](results/) folder, comparing result values (such as width and length) with the intent to find correlations between these values. 

## Prerequisites

Install prerequisite packages with
```
python -m pip install numpy matplotlib
```
> **Note**: your Python version *must* be 3.5<. You can find this out with the console command `python --version`.  

## Running

The program is run with the following arguments:

```
python analysis.py <mapping_results.csv path>
```
* The image path is the absolute or relative path to your mapping_results.csv file from [../Mapping/](../Mapping/)

Results will appear in the [results/](results/) folder. 