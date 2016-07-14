# Codebook

The UCI HAR dataset contains numerous fields for raw accelerometer and gyroscope signals, along with a set of statistical summaries for each parameter.

From the UCI HAR 'features_info.txt' document:

-tBodyAcc-XYZ
-tGravityAcc-XYZ
-tBodyAccJerk-XYZ
-tBodyGyro-XYZ
-tBodyGyroJerk-XYZ
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-XYZ
-fBodyAccJerk-XYZ
-fBodyGyro-XYZ
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag

The UCI HAR set also contains mean(), std() , and several other values for each of these parameters, labeled by appending '_mean()' or 'std()' to the end of the variable name.  Only the mean() and std() parameters were used here.

The 'tidy_result.txt' document provided here uses the same naming convention as the UCI HAR study, but appends 'mean_' to the beginning of the variable name such that:

'tBodyAcc_mean_X' from the original set becomes 'mean_tBodyAcc_mean_X' in the summary.
