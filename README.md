# Self-replication-simulator
The zip file contains the code for the model of self-replicating chemical reaction system. The corresponding paper is published in the Journal of Biological Chemistry.

================================================


You can download the zip file, extract it, and then run it on your own computer.

Launch MATLAB (at least version R2017b), set the current path to the extracted folder.

The main program is the file “sim_general.m”.

This m-file calls the m-file “SpecificSys.m”, which is where you change to investigate different chemical reaction systems. If you want to simulate the citric acid cycle, type in “Citric” in this file; if you want to simulate the formose reaction, type in “Formose” in this file. And then you can run the m-file “sim_general.m”. All the parameters have already been set as the same as in the paper.

After running this program, the variables we look at are “recordT” and “recordN”. “recordT” records the time series, and it is a vector of T elements where T is the number of times steps we recorded. “recordN” records the molecule populations at the corresponding time. For example, column 1 records the population of molecule \bar{1} at each time step; column 2 records the population of molecule \bar{2} at each time step; etc.
