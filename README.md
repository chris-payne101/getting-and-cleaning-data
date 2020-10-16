# getting-and-cleaning-data
## Getting and Cleaning Data - Course Project

### Contents of this Repository
1. README.md - this file
2. run_analysis.R- R file containing code to complete the requested functions
3. Codebook.md - Codebook describing the variables in the tidy.txt file
4. tidy.txt - Txt file containing the requested analysis output
5. getting-and-cleaning-data.Rproj - RStudio Project File

### Project Scope and Description 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

### run_analysis.R Overview
The run_analysis.R code performs the follwoing actions
1. Creates variables for the download of data
2. Loads the reshape Library
3. Checks the existance of the Data.zip file and downloads if not found
4. Unzips the Data.zip file if the UCI HAR Dataet directory is missing
5. Load the activity_labels.txt and features.txt files into data frames, removing () from features
6. Loads a dataset (this activity is repeated for both test and train), remove unwanted columns, replace activity.ID with activity name and merges into a single data.frame 
7. Activity repeated for other dataset
8. Datasets (train and test) merged
9. Meld and cast operations are performed on the dataset to produce a dataset with the average of each variable for each activity and each subject
10. The 'tidy' dataset is written out to a file called tidy.txt
