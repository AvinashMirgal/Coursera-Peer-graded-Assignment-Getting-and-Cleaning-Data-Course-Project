# Coursera-Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project
## Overview
### This README.md file has two parts:
- Explanation of the analysis files included in this repo
- Coursera instructions for completing the course project
## Part 1: Explanation of the analysis files included in this repo
### This repo contains four files:
- README.md - The document you are reading now.
- CodeBook.md - Summarizes the variables and data in fisrt_data_set and second_data_set, including identifiers, measurements, and activity labels.
- run_analysis.R - an R script that does the following:
  - Download UCI HAR Dataset and store file locally
  - Load dplyr and tidyr
  - Unzip locally stored zip file
  - Load activity labels
  - Load and select features that include mean or standard deviation Create list of feature names Transpose this list of feature names Make appropriate labels for the data set with descriptive variable names Coerce the proper dimensionality of the feature list
  - Load training data Extract only the measurements on the mean and standard deviation for each measurement Appropriately label the data set with descriptive variable names
  - Load testing data
  - Extract only the measurements on the mean and standard deviation for each measurement Appropriately label the data set with descriptive variable names
  - Merge the training and the test sets to create one tidy data set: mydata Use descriptive activity names to name the activities in the data set
  - Create a second, independent tidy data set with the average of each variable for each activity and each subject: mydata2
  - Take averages for each activity
  - Take averages for each subject
  - Merge the two sets of averages Make Feature a labelled column rather than row names in accordance with tidy data theory
  - View the first tidy data set: mydata
  - View the second tidy data set: mydata2
## Part 2: Coursera instructions for completing the course project
### The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

#### Review criteria
- The submitted data set is tidy.
- The Github repo contains the required scripts.
- GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
- The README that explains the analysis files is clear and understandable.
- The work submitted for this project is the work of the student who submitted it.
### Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!
