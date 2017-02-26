# GettingAndCleaningDataCourseProject
Course Project for Getting and Cleaning Data

This repository contains script for obtaining tidy dataset for Course Project for Getting and Cleaning Data

The following files included in the repository:

run_analysis.R

Script performs following steps: 

1. Downloads dataset if it is not exists
2. Unzip dataset if it not exists
3. Loads dataset feature names and activity labels
4. Creates filter based on feature names (mean() and std())
5. Loads datasets for train and test (subject and activity merged with filtered data)
6. Combines train and test datasets
7. Produces new dataset which contains averaged data per subject per activity
8. Saves dataset to file tidy.txt
