
### README

A brief background  on the raw data first : 

Mainly, there are two sets of data: training data and test data. Each of these again contain 3 sets of information: 1> subject data :  numerical identifiers for the subjects on whom the measurements were taken, 2> activities done by the subjects when the measurements were done and 3> actual measurements.
Values for the subjects, activities and the measurements for each of the test and training data are given in different files.

The files for the data are as follows:

Description                   Actual measurements(dim)    Subject info(dim)               Activity info(dim)
of files

Training data:                X_train.txt (7352 * 561)    subject_train.txt (7352 * 1)    y_train.txt (7352 * 1)
Test data:                    X_test.txt (2947 * 561)     subject_test.txt (2947 * 1)     y_test.txt (2947 * 1)


column info (names)           features.txt (561 * 2)
for training and test data

Overall process: 

The data in these files were clipped together to form a main data frame in R first. Following the requirements of the project, only columns for 'mean' and 'std' were retrieved from this main data frame. The column names were changed to make them slightly more readable. Then aggregation function 'mean' was applied on the data for each activity and each subject.

Steps in detail:

Requirement 1. Merges the training and the test sets to create one data set.

To achieve this, first, the six files mentioned above, namely, 'X.train.txt', 'subject_train.txt', 'y_train.txt', 'X_test.txt', 'subject_test.txt' and 'y.test.txt' were read using 'read.table' into 6 data_frames, X_test, y_test, subject_test, X_train, y_train, subject_train.

Next, the training data and test data are clipped together. The order in which I clipped them together is as follows:

Training data: 

subject_train + y_train + X_train

clip together subject_train and y_train by columns to form an intermediate sub_y_train.
clip together this sub_y_train and X_train by columns to form an intermediate sub_y_X_train.
I used the R cbind function to achieve the above.

Test data:

subject_test + y_test + X_test

clip together subject_test and y_test by columns to form an intermediate sub_y_test.
clip together this sub_y_test and X_test by columns to form an intermediate sub_y_X_test.
I used the R cbind function to achieve the above.

Finally clip together sub_y_X_train and sub_y_X_test by rows to form train_test. I used the R rbind function to achieve this.

Requirement 3. Uses descriptive activity names to name the activities in the data set

The data in y_train and y_test is the activity data, which is a series of integers between 1 and 6, to indicate the activities WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING. As mentioned above, this data is in the main data frame 'train_test' as column number 2 in 'Requirement 1'.
So I used the R function gsub to substitute 1 with WALKING, 2 with WALKING_UPSTAIRS etc. as indicated in the file 'activity_labels.txt'. I used the gsub function on column 2 in the data frame, 'train_test'.

Requirement 4. Appropriately labels the data set with descriptive variable names. 

The column names for the data are given in the file 'features.txt'. I read 'features.txt' into data frame features. I used the following substitutions (R function gsub) on the second column in data frame 'features' to make the column names more readable:

REPLACE FOLLOWING       WITH

-                       _
,                       _
()                      blank
)                       blank
(                       _

So now I have the required names as the second column in data frame 'features'.
Then I set the column names of main data frame 'train_test' as 'Subject', 'Activity' and the second column of the data frame 'features' using R function colnames

Requirement 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

I did this as step 4, because I wanted to have proper column names for the data first.

I did an R function 'grep' on column names of data frame 'train_test' to extract only those columns with values 'mean' and 'std' in them. This was written into another data frame 'train_test_mean_std'. We also need the columns with the Subject and Activity data in them. I extracted them with R subsetting into another data frame train_Sub_Act.

I combined data frames train_Sub_Act and train_test_mean_std by columns using R function cbind into a new dataframe 'train_test_Sub_Act_mean_std'.

Requirement 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Finally, I used R function 'aggregate', using R function 'mean' to average the measurements by Activity and Subject. I wrote the results into file 'TidyDataFinal.txt' using write.table.

Assumptions:

The code assumes that all the required files are in the current working directory:
run_analysis.R, X_test.txt, y_test.txt, subject_test.txt, X_train.txt, y_train.txt, subject_train.txt.

To run the code:

With the file 'run_analysis.R' open and current in R-Studio, I did a 'Source' on the file. This executes the code and produces the final output 'TidyDataFinal.txt'. in the current directory.

To test the output, I executed the following command:

d <- read.table("TidyDataFinal.txt", as.is = TRUE, header = TRUE, sep = "\t", row.names = NULL)
















