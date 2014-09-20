

### CODE BOOK

A brief background  on the raw data first : 

Mainly, there are two sets of data: training data and test data. Each of these again contain 3 sets of information: 1> subject data or numerical identifiers for the subjects on whom the measurements were taken, 2> activities done by the subjects when the measurements were done and 3> actual measurements.
Values for the subject, activity and the measurements for each of the test and training data were given in different files originally. The data in these files were clipped together to form a main data frame in R first. Following the requirements of the project, only columns for 'mean' and 'std' were retrieved from this main data frame. The column names were changed to make them slightly more readable. 
Then aggregation function 'mean' was applied on the data for each activity and each subject.
The steps I followed to do this is descibed in the Readme.md file.

DESCRIPTION OF COLUMNS:

Activity

The value in this column (together with the value in the Subject column) indicate the combination for which the measurement is shown in column 3 onwards.
This column has one of following string values: LAYING, SITTING, STANDING, WALKING,WALKING_DOWNSTAIRS and WALKING_UPSTAIRS.

Subject

The value in this column (together with the value in the Activity column) indicate the combination for which the measurement is shown in column 3 onwards.
This column can have values: integer values 1 to 30.

For e.g. value 'WALKING' in 'Activty' column and value 1 in 'Subject' column together indicate that, for this row, the measurement values from column 3 onwards are for subject 1 where they were walking.

------
Columns after column Subject are explained below:

From the main data frame (mentioned in the background section above), for a certain subject (e.g. 1) and activity (e.g. walking), the measurements (e.g as for tBodyAcc-mean()-X) as they appear in the original data files, X_train.txt and X_test.txt were averaged i.e. R function 'mean' was applied on these values, by Activity and Subject, to arrive at the corresponding value (e.g as for tBodyAcc_mean_X) as they appear in the delivered data file, 'TidyDataFinal.txt': 

COLUMN 1 (derived to this)                  COLUMN 2 (derived from this)


tBodyAcc_mean_X was derived from tBodyAcc-mean()-X

tBodyAcc_mean_Y  was derived from tBodyAcc-mean()-Y

tBodyAcc_mean_Z  was derived from tBodyAcc-mean()-Z

tBodyAcc_std_X  was derived from tBodyAcc-std()-X

tBodyAcc_std_Y  was derived from tBodyAcc-std()-Y

tBodyAcc_std_Z was derived from tBodyAcc-std()-Z

tGravityAcc_mean_X was derived from tGravityAcc-mean()-X

tGravityAcc_mean_Y was derived from tGravityAcc-mean()-Y

tGravityAcc_mean_Z was derived from tGravityAcc-mean()-Z

tGravityAcc_std_X was derived from tGravityAcc-std()-X

tGravityAcc_std_Y was derived from tGravityAcc-std()-Y

tGravityAcc_std_Z was derived from  tGravityAcc-std()-Z

tBodyAccJerk_mean_X was derived from tBodyAccJerk-mean()-X

tBodyAccJerk_mean_Y was derived from tBodyAccJerk-mean()-X

tBodyAccJerk_mean_Z was derived from tBodyAccJerk-mean()-Z

tBodyAccJerk_std_X was derived from tBodyAccJerk-std()-X

tBodyAccJerk_std_Y was derived from tBodyAccJerk-std()-Y

tBodyAccJerk_std_Z was derived from tBodyAccJerk-std()-Z

tBodyGyro_mean_X was derived from tBodyGyro-mean()-X

tBodyGyro_mean_Y was derived from tBodyGyro-mean()-Y

tBodyGyro_mean_Z was derived from tBodyGyro-mean()-Z

tBodyGyro_std_X was derived from tBodyGyro-std()-X

tBodyGyro_std_Y was derived from tBodyGyro-std()-Y

tBodyGyro_std_Z was derived from tBodyGyro-std()-Z

tBodyGyroJerk_mean_X was derived from tBodyGyroJerk-mean()-X

tBodyGyroJerk_mean_Y was derived from tBodyGyroJerk-mean()-Y

tBodyGyroJerk_mean_Z was derived from tBodyGyroJerk-mean()-Z

tBodyGyroJerk_std_X was derived from tBodyGyroJerk-std()-X

tBodyGyroJerk_std_Y was derived from tBodyGyroJerk-std()-Y

tBodyGyroJerk_std_Z  was derived from tBodyGyroJerk-std()-Z

tBodyAccMag_mean was derived from tBodyAccMag-mean()

tBodyAccMag_std was derived from tBodyAccMag-std()

tGravityAccMag_mean was derived from tGravityAccMag-mean()

tGravityAccMag_std was derived from tGravityAccMag-std()

tBodyAccJerkMag_mean was derived from tBodyAccJerkMag-mean()

tBodyAccJerkMag_std was derived from  tBodyAccJerkMag-std()

tBodyGyroMag_mean was derived from  tBodyGyroMag-mean()

tBodyGyroMag_std was derived from tBodyGyroMag-std()

tBodyGyroJerkMag_mean was derived from  tBodyGyroJerkMag-mean()

tBodyGyroJerkMag_std was derived from tBodyGyroJerkMag-std()

fBodyAcc_mean_X was derived from  fBodyAcc-mean()-X

fBodyAcc_mean_Y was derived from  fBodyAcc-mean()-Y

fBodyAcc_mean_Z was derived from  fBodyAcc-mean()-Z

fBodyAcc_std_X was derived from fBodyAcc-std()-X

fBodyAcc_std_Y was derived from fBodyAcc-std()-Y

fBodyAcc_std_Z was derived from fBodyAcc-std()-Z

fBodyAcc_meanFreq_X was derived from fBodyAcc-meanFreq()-X

fBodyAcc_meanFreq_Y was derived from fBodyAcc-meanFreq()-Y

fBodyAcc_meanFreq_Z was derived from fBodyAcc-meanFreq()-Z

fBodyAccJerk_mean_X was derived from fBodyAccJerk-mean()-X

fBodyAccJerk_mean_Y was derived from fBodyAccJerk-mean()-Y

fBodyAccJerk_mean_Z was derived from fBodyAccJerk-mean()-Z

fBodyAccJerk_std_X was derived from fBodyAccJerk-std()-X

fBodyAccJerk_std_Y was derived from fBodyAccJerk-std()-Y

fBodyAccJerk_std_Z was derived from fBodyAccJerk-std()-Z

fBodyAccJerk_meanFreq_X was derived from fBodyAccJerk-meanFreq()-X

fBodyAccJerk_meanFreq_Y was derived from fBodyAccJerk-meanFreq()-Y

fBodyAccJerk_meanFreq_Z was derived from fBodyAccJerk-meanFreq()-Z

fBodyGyro_mean_X was derived from fBodyGyro-mean()-X

fBodyGyro_mean_Y was derived from fBodyGyro-mean()-Y

fBodyGyro_mean_Z was derived from fBodyGyro-mean()-Z

fBodyGyro_std_X was derived from fBodyGyro-std()-X

fBodyGyro_std_Y was derived from fBodyGyro-std()-Y

fBodyGyro_std_Z was derived from fBodyGyro-std()-Z

fBodyGyro_meanFreq_X was derived from fBodyGyro-meanFreq()-X

fBodyGyro_meanFreq_Y was derived from fBodyGyro-meanFreq()-Y

fBodyGyro_meanFreq_Z was derived from fBodyGyro-meanFreq()-Z

fBodyAccMag_mean was derived from fBodyAccMag-mean()

fBodyAccMag_std was derived from fBodyAccMag-std()  

fBodyAccMag_meanFreq was derived from fBodyAccMag-meanFreq()

fBodyBodyAccJerkMag_mean was derived from fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag_std was derived from fBodyBodyAccJerkMag-std()

fBodyBodyAccJerkMag_meanFreq was derived from fBodyBodyAccJerkMag-meanFreq()

fBodyBodyGyroMag_mean was derived from  fBodyBodyGyroMag-mean()

fBodyBodyGyroMag_std was derived from fBodyBodyGyroMag-std()

fBodyBodyGyroMag_meanFreq was derived from  fBodyBodyGyroMag-meanFreq()

fBodyBodyGyroJerkMag_mean was derived from fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag_std was derived from fBodyBodyGyroJerkMag-std()

fBodyBodyGyroJerkMag_meanFreq was derived from fBodyBodyGyroJerkMag-meanFreq()

angle_tBodyAccMean_gravity was derived from angle(tBodyAccMean,gravity)

angle_tBodyAccJerkMean_gravityMean was derived from  angle(tBodyAccJerkMean),gravityMean)

angle_tBodyGyroMean_gravityMean was derived from angle(tBodyGyroMean,gravityMean)

angle_tBodyGyroJerkMean_gravityMean was derived from  angle(tBodyGyroJerkMean,gravityMean)

angle_X_gravityMean was derived from angle(X,gravityMean)

angle_Y_gravityMean  was derived from angle(Y,gravityMean)

angle_Z_gravityMean  was derived from angle(Z,gravityMean)

--------------------------




