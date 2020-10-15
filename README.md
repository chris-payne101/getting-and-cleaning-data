# getting-and-cleaning-data
## Getting and Cleaning Data - Course Project

### Project Scope and Description 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

### Structure of Supplied Data

A .zip file is provided as part of this project, it's structure is:
UCI HAR Dataset
  \activity_labels.txt
  \features.txt
  \features_info.txt
  \README.txt
  \test
    \subject_test.txt
    \X_test.txt
    \Y_test.txt
    \Inertial Signals
      \<source data files>
    \train
    \subject_test.txt
    \X_test.txt
    \Y_test.txt
    \Inertial Signals
      \<source data files>
