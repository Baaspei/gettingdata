# README

# Indroduction

This analysis acts on the "Human Activity Recognition" database to provide some summary statistics of key parameters.

# File list

-README.md - This document

-run_analysis.R - An R script which performs the required analysis.  The script loads the 'test' and 'train' data sets from the UCI HAR dataset and combines them.  The combined dataset is labeled with field names obtained from the 'features.txt' document and each of the activities monitored is labeled with 'activity_lables.txt', both files obtained from the UCI HAR dataset.  A subset of only fields concerning mean and standard deviation are then grouped by 'Subject' and 'Activity' and the mean of each parameter is found.  The resulting tidy data set is available in this repo.

-tidy_result.txt - The output of run_analysis.R

-codebook.md - A document that describes the field names from 'tidy_result.txt'
