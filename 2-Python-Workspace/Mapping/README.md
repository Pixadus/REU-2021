# Mapping

This script is designed to analyze traced loops, looking for parameters such as length, breadth and intensities of each pixel on each loop. Results are stored within [results/mapping_results.csv](results/mapping_results.csv).

## Prerequisites

Install prerequisites with
```
python -m pip install numpy scipy astropy matplotlib
```
> **Note**: your Python version *must* be 3.5<. You can find this out with the console command `python --version`.  

## Running

This script takes two parameters: 

```
python mapping.py <occult2-path> <picture-path>
```
* __occult2-path__ refers to the path to your OCCULT-2 .dat results file. 
* __picture-path__ refers to a .sav or .fits file, the original image file you used with OCCULT-2. 

A typical example, loading data from a saved coordinate grid and a given image with zero offset,

```
python mapping.py Halpha-N3R45L45G3.dat Halpha.sav
```

Results will appear in the file [results/mapping_results.csv](results/mapping_results.csv). 