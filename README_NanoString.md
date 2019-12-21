This pipeline is built for the analysis of the NanoString data in general BUT NS_ML_pipeline.py is used to predict if the individuals are patient or not. to do so, different algorithms are used and to choose the best model, the accuracy for all of them also will be calculated.

The input data files for this are .RCC files and metadata.txt. RCC files, which has the expression of up to 800 gene, are the output of the NanoString machine and the metadata.txt, which has 2 columns, is made by the user of this tool.
Prerequisites:

The following packages in python3 should be installed:

1- subprocess
2- os
3- bokeh
4- matplotlib
5- numpy
6- pandas
7- scipy
8- seaborn
9- functools
10- itertools
11- csv
12- sklearn
13- keras
14- xgboost

and the following libraries in R also should be installed:

1- ggrepel
2- edgeR

HOW TO RUN:

There are 2 ways to run:

A) Using the makefile:

1- To install all required packages:

make env 

2- T run all steps sequentially:

make run

B) Running the main scripts one by one:

1- to do the quality control of the files you shoud use QC.py script and run it in python3 as follows:

python3 QC.py

2- To do the EXPLORATORY ANALYSIS this script should be run: "group_comparison.py".
here is the command which can be used to run the second step:

python3 group_comparison.py -G GENE_NAME

GENE_NAME is the name the gene that you would like to make a violin plot for.

3- To do the GENE EXPRESSION ANALYSIS this script is made: python3 GE_volcano.py

the following command can be used to run this script:

python3 GE_volcano.py
