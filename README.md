GettingClearingData
===========
Repository for Programming Assignment for Getting and Cleaning Data on Coursera


## Introduction

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 


## The raw data

The raw data was downloaded from the url [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzipped into the directory [UCI HAR Dataset](https://github.com/zwiber/GettingClearingData/blob/master/UCI%20HAR%20Dataset) in the current repository.


## The tidy data set

The tidy data set represent the average of each mean and standard deviation measurement for each activity and each subject participating in the experiments. 
The tidy data set was generated in the file [tidy_data_set.txt](https://github.com/zwiber/GettingClearingData/blob/master/tidy_data_set.txt) in the current repository. 


## The instruction list 

The repository has a file [run_analysis.R](https://github.com/zwiber/GettingClearingData/blob/master/run_analysis.R) in the main directory that can be run as long as the Samsung data is in the R working directory.

The script does the following : 

1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## The code book

### Study design

The raw data represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Code book

VARIABLES | DESCRIPTION | UNIT
--- | --- | ---
”activity" | The measured activity (LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS) | 
”subject" |The volunteer’s number between 1 to 30 for the experiments | 
”tBodyAcc.mean...X" | Mean value of the body acceleration signals in the X direction | metre per second squared (m/s2)
”tBodyAcc.mean...Y" | Mean value of the body acceleration signals in the Y direction | metre per second squared (m/s2)
”tBodyAcc.mean...Z" | Mean value of the body acceleration signals in the Z direction | metre per second squared (m/s2)
”tBodyAcc.std...X" | Standard deviation of the body acceleration signals in the X direction | metre per second squared (m/s2)
”tBodyAcc.std...Y" | Standard deviation of the body acceleration signals in the Y direction | metre per second squared (m/s2)
”tBodyAcc.std...Z" | Standard deviation of the body acceleration signals in the Z direction | metre per second squared (m/s2)
”tGravityAcc.mean...X" | Mean value of the gravity acceleration signals in the X direction | metre per second squared (m/s2)
”tGravityAcc.mean...Y" | Mean value of the gravity acceleration signals in the Y direction | metre per second squared (m/s2)
”tGravityAcc.mean...Z" | Mean value of the gravity acceleration signals in the Z direction | metre per second squared (m/s2)
”tGravityAcc.std...X" | Standard deviation of the gravity acceleration signals in the X direction | metre per second squared (m/s2)
”tGravityAcc.std...Y" | Standard deviation of the gravity acceleration signals in the Y direction | metre per second squared (m/s2)
”tGravityAcc.std...Z" | Standard deviation of the gravity acceleration signals in the Z direction | metre per second squared (m/s2)
”tBodyAccJerk.mean...X" | Mean value of the body acceleration Jerk signals in the X direction | metre per second cubed (m/s3)
”tBodyAccJerk.mean...Y" | Mean value of the body acceleration Jerk signals in the Y direction | metre per second cubed (m/s3)	
”tBodyAccJerk.mean...Z" | Mean value of the body acceleration Jerk signals in the Z direction | metre per second cubed (m/s3)
”tBodyAccJerk.std...X" | Standard deviation of the body acceleration Jerk signals in the X direction | metre per second cubed (m/s3)
”tBodyAccJerk.std...Y" | Standard deviation of the body acceleration Jerk signals in the Y direction | metre per second cubed (m/s3)
”tBodyAccJerk.std...Z" | Standard deviation of the body acceleration Jerk signals in the Z direction | metre per second cubed (m/s3)
”tBodyGyro.mean...X" | Mean value of the body angular velocity signals in the X direction | radians per second (rad/s)
”tBodyGyro.mean...Y" | Mean value of the the body angular velocity signals in the Y direction | radians per second (rad/s)
”tBodyGyro.mean...Z" | Mean value of body angular velocity signals in the Z direction | radians per second (rad/s)
”tBodyGyro.std...X" | Standard deviation of the body angular velocity signals in the X direction | radians per second (rad/s)
”tBodyGyro.std...Y" | Standard deviation of the body angular velocity signals in the Y direction | radians per second (rad/s)
”tBodyGyro.std...Z" | Standard deviation of the body angular velocity signals in the Z direction | radians per second (rad/s)	
”tBodyGyroJerk.mean...X" | Mean value of the body angular velocity Jerk signals in the X direction | radians per second squared (rad/s2)
”tBodyGyroJerk.mean...Y" | Mean value of the body angular velocity Jerk signals in the Y direction | radians per second squared (rad/s2)
"tBodyGyroJerk.mean...Z" | Mean value of the body angular velocity Jerk signals in the Z direction | radians per second squared (rad/s2)
"tBodyGyroJerk.std...X" | Standard deviation of the body angular velocity Jerk signals in the X direction | radians per second squared (rad/s2)
"tBodyGyroJerk.std...Y" | Standard deviation of the body angular velocity Jerk signals in the Y direction | radians per second squared (rad/s2)
"tBodyGyroJerk.std...Z" | Standard deviation of the body angular velocity Jerk signals in the Z direction |radians per second squared (rad/s2)
"tBodyAccMag.mean.." | Mean value of the body acceleration magnitude signals | metre per second squared (m/s2)
"tBodyAccMag.std.." | Standard deviation of the body acceleration magnitude signals | metre per second squared (m/s2)
"tGravityAccMag.mean.." | Mean value of the gravity acceleration magnitude signals | metre per second squared (m/s2)
"tGravityAccMag.std.." | Standard deviation of the gravity acceleration magnitude signals | metre per second squared (m/s2)
"tBodyAccJerkMag.mean.." | Mean value of the body acceleration Jerk magnitude signals | metre per second cubed (m/s3)
"tBodyAccJerkMag.std.." | Standard deviation of the body acceleration Jerk magnitude signals | metre per second cubed (m/s3)
”tBodyGyroMag.mean.." | Mean value of the body angular velocity magnitude signals | radians per second (rad/s)
”tBodyGyroMag.std.." | Standard deviation of the body angular velocity magnitude signals | radians per second (rad/s)
"tBodyGyroJerkMag.mean.." | Mean value of the body angular velocity Jerk magnitude signals | radians per second squared (rad/s2)
"tBodyGyroJerkMag.std.." | Standard deviation of the body angular velocity Jerk magnitude signals | radians per second squared (rad/s2)
"fBodyAcc.mean...X" | Mean value of the body acceleration frequency signals in the X direction | metre per second squared (m/s2)
"fBodyAcc.mean...Y" | Mean value of the body acceleration frequency signals in the Y direction | metre per second squared (m/s2)
"fBodyAcc.mean...Z" | Mean value of the body acceleration frequency signals in the Z direction | metre per second squared (m/s2)
"fBodyAcc.std...X" | Standard deviation of the body acceleration frequency signals in the X direction | metre per second squared (m/s2)
"fBodyAcc.std...Y" | Standard deviation of the body acceleration frequency signals in the Y direction | metre per second squared (m/s2)
"fBodyAcc.std...Z" | Standard deviation of the body acceleration frequency signals in the Z direction | metre per second squared (m/s2)
"fBodyAccJerk.mean...X" | Mean value of the body acceleration Jerk frequency signals in the X direction | metre per second cubed (m/s3)
"fBodyAccJerk.mean...Y" | Mean value of the body acceleration Jerk frequency signals in the Y direction | metre per second cubed (m/s3)
"fBodyAccJerk.mean...Z" | Mean value of the body acceleration Jerk frequency signals in the Z direction | metre per second cubed (m/s3)
"fBodyAccJerk.std...X" | Standard deviation of the body acceleration Jerk frequency signals in the X direction | metre per second cubed (m/s3)
"fBodyAccJerk.std...Y" | Standard deviation of the body acceleration Jerk frequency signals in the Y direction | metre per second cubed (m/s3)
"fBodyAccJerk.std...Z" | Standard deviation of the body acceleration Jerk frequency signals in the Z direction | metre per second cubed (m/s3)
"fBodyGyro.mean...X" | Mean value of the body angular velocity frequency signals in the X direction | radians per second (rad/s)
"fBodyGyro.mean...Y" | Mean value of the body angular velocity frequency signals in the Y direction | radians per second (rad/s)
"fBodyGyro.mean...Z" | Mean value of the body angular velocity frequency signals in the Z direction | radians per second (rad/s)
"fBodyGyro.std...X" | Standard deviation of the body angular velocity frequency signals in the X direction | radians per second (rad/s)
"fBodyGyro.std...Y" | Standard deviation of the body angular velocity frequency signals in the Y direction | radians per second (rad/s)
"fBodyGyro.std...Z" | Standard deviation of the body angular velocity frequency signals in the Z direction | radians per second (rad/s)
"fBodyAccMag.mean.." | Mean value of the body acceleration magnitude frequency signals | metre per second squared (m/s2)
"fBodyAccMag.std.." | Standard deviation of the body acceleration magnitude frequency signals | metre per second squared (m/s2)
"fBodyBodyAccJerkMag.mean.." | Mean value of the body acceleration Jerk magnitude frequency signals | metre per second cubed (m/s3)
"fBodyBodyAccJerkMag.std.." | Standard deviation of the body acceleration Jerk magnitude frequency signals | metre per second cubed (m/s3)
"fBodyBodyGyroMag.mean.." | Mean value of the body angular velocity magnitude frequency signals | radians per second (rad/s)
"fBodyBodyGyroMag.std.." | Standard deviation of the body angular velocity magnitude frequency signals | radians per second (rad/s)
"fBodyBodyGyroJerkMag.mean.." | Mean value of the body angular velocity Jerk frequency signals | radians per second squared (rad/s2)
"fBodyBodyGyroJerkMag.std.." | Standard deviation of the body angular velocity Jerk frequency signals | radians per second squared (rad/s2)

