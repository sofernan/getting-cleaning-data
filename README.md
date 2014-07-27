README
------
This document explains the problem statement, psuedocode and instructions for running the code.

EXPERIMENTS CONDUCTED & DATA COLLECTED
--------------------------------------
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

Please see link for additional details on experiments and data collected :
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project was downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

RELEVANT DATASET FILE DESCRIPTIONS

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

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

PROJECT PROBLEM STATEMENT

Create an R script called run_analysis.R that does the following.
   - Merges the training and the test sets to create one data set.
   - Extracts only the measurements on the mean and standard deviation for each measurement.
   - Uses descriptive activity names to name the activities in the data set.
   - Appropriately labels the data set with descriptive variable names.
   - Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

PSUEDO-CODE & INSTRUCTIONS FOR RUNNING THE CODE
-----------------------------------------------
PSUEDO-CODE

Following steps clean and transforms the test data
- Read in test set, test labels, subject labels, activity labels and features list as dataframes
- Add feature names from features list onto test dataframe
- Remove features that are not mean or std deviation features from test set
- Add test labels and subject label (the test id and the subject performing the test) onto test dataframe
- Substitute activity names for test labels on test set
- Melt the test data to allow for easy calculation for averages for feature, subject and activity grouping

Follow above steps for train data.

Merge the test and train data.

Create the final tidy set by calculating average for feature, subject and activity grouping.

INSTRUCTIONS FOR RUNNING CODE

  - Copy run_analysis.R to local directory.
  - Copy raw data into working directory.
  - Change set working directory to your working directory within code.
  - Run the Code.
  - A csv file of the tidy dataset will be created in working directory.
  - Review CodeBook.md for a description of columns and rows in the tidy data set.


