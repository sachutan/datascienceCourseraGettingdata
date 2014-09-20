### read in the data files into data frames

X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")

### clip together subject_train, y_train, X_train by columns

sub_y_train <- cbind(subject_train, y_train)
sub_y_X_train <- cbind(sub_y_train, X_train)

### clip together subject_test, y_test, X_test by columns

sub_y_test <- cbind(subject_test, y_test)
sub_y_X_test <- cbind(sub_y_test, X_test)

### clip together train data and test data by rows

train_test <- rbind(sub_y_X_train, sub_y_X_test)

### for activity data, substitute 1 with 'WALKING', 2 with 'WALKING_UPSTAIRS', 3 with 'WALKING_DOWNSTAIRS', 
### 4 with 'SITTING', 5 with 'STANDING' and 6 with 'LAYING' as indicated in the 'activity_labels.txt' file

train_test[,2] <- gsub('1', 'WALKING', train_test[,2])
train_test[,2] <- gsub('2', 'WALKING_UPSTAIRS', train_test[,2])
train_test[,2] <- gsub('3', 'WALKING_DOWNSTAIRS', train_test[,2])
train_test[,2] <- gsub('4', 'SITTING', train_test[,2])
train_test[,2] <- gsub('5', 'STANDING', train_test[,2])
train_test[,2] <- gsub('6', 'LAYING', train_test[,2])

### read in the featured data file into data frame 'feature'. This will be mdified to use as 
### column names for the final data frame.

features <- read.table("features.txt")

### make the following substitutions to make the column names more readable:
### REPLACE FOLLOWING       WITH

### -                       _
### ,                       _
### ()                      blank
### )                       blank
### (                       _

features[,2] <- gsub('-', '_', features[,2])
features[,2] <- gsub(',', '_', features[,2])
features[,2] <- gsub("\\()", "", features[,2])
features[,2] <- gsub("\\)", "", features[,2])
features[,2] <- gsub("\\(", "_", features[,2])

### now use this along with 'Subject' and 'Activity' as column names of the main data frame

colnames(train_test) <- c('Subject', 'Activity', features[,2])

### use grep to extract only those columns with mean and standard deviation in it.

train_test_mean_std <- train_test[, grepl("mean|std", colnames(train_test), ignore.case=TRUE)]

### also extract columns with Subject and Activity

train_Sub_Act <- train_test[, c(1,2)]

### clip the Subject, Activity and mean and standard deviation columns together

train_test_Sub_Act_mean_std <- cbind(train_Sub_Act, train_test_mean_std)

### average the measurement data by Activity and Subject

result <- aggregate(. ~ Activity * Subject, data = train_test_Sub_Act_mean_std, FUN = mean)

### write final output into a text file

write.table(result, file = "TidyDataFinal.txt", row.names=FALSE, sep="\t", quote=FALSE)
