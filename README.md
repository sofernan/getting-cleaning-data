Title - README
==========================================================================================
This document explains the problem statement, explanation of attached code and instructions for running the code.

DATA TO BE ANALYZED
==========================
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project was downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

RELEVANT DATASET FILE DESCRIPTIONS
==================================
Only the files that are used for the tasks in the project problem statement are explained in this document.

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Additional Notes: 
================
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

PROJECT PROBLEM STATEMENT
=============================

Create an R script called run_analysis.R that does the following. 

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement. 
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names. 
    Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
    






