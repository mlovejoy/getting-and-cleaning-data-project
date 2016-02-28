# getting-and-cleaning-data-project

# Coursera Getting and Cleaning Data Project

This repository contains data from the UCI Machine Learning Repository and code that extracts specified fields, melts and casts the data, and calculates specified values.

This repository satisfies the requirements of the Coursera Getting and Cleaning Data project, with the following criteria:

1) a tidy data set as described below, 

2) a link to a Github repository with your script for performing the analysis, and 

3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

## run_analysis.R

This code file performs the following functions:

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement.

3) Uses descriptive activity names to name the activities in the data set

4) Appropriately labels the data set with descriptive variable names.

5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Process

To run the script, fork the repository to your local machine to obtain the run_analysis.R file and the data folder. When you run the run_analysis.R file in R, it reads the files in the data folder, merges them, extracts mean and standard deviation measurements, applies descriptive labels and activity names, and melts and casts the data in such a way that the average of all variables is calculated for each activity for each subject. A final tidy data set is produced as a csv.

## Tidy Data

The result of this code is a tidy data set with one row for each subject and activity, and with one column for each variable relating to mean and standard deviation. The average of the values for each variable for each subject and activity is presented.

## UCI Machine Learning Repository Citation

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
