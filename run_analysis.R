## run_analysis.R
## This code is for the Coursera Getting and Cleaning Data
## course project

## This code takes data from the UCI Machine Learning Repository's
## Human Activity Recognition Using Smartphones Data Set 

## See the readme document in the Github repository for more information

## IMPORT FILES

# Read Activity Labels and give column names
activity_labels <- read.table("./activity_labels.txt", col.names=c("activityID", "activityLabel"))

# Read Features label data and extract second column of labels
features <- read.table("./features.txt")
featureNames <- features[ ,2]

# Read Subject train data and name field
subject_train <- read.table("./train/subject_train.txt")
colnames(subject_train) <- "subjectID"

# Read Features train data and name field
X_train <- read.table("./train/X_train.txt")
colnames(X_train) <- featureNames

# Read Activities train data and name field
y_train <- read.table("./train/y_train.txt")
colnames(y_train) <- "activityID"

# Read Subject test data and name field
subject_test <- read.table("./test/subject_test.txt")
colnames(subject_test) <- "subjectID"

# Read Features test data and name field
X_test <- read.table("./test/X_test.txt")
colnames(X_test) <- featureNames

# Read Activities test data and name field
y_test <- read.table("./test/y_test.txt")
colnames(y_test) <- "activityID"

## COMBINE FILES

# Combine the test data

test <- cbind(subject_test, X_test, y_test)

# Combine the train data

train <- cbind(subject_train, X_train, y_train)

# Combine train and test data into one data frame

data <- rbind(train, test)

## EXTRACT SPECIFIED FIELDS

# Identify only fields with mean or standard deviation

meanColumns <- grep("mean", names(data), ignore.case=TRUE)

stdColumns <- grep("std", names(data), ignore.case=TRUE)

# Extract only fields identified with mean or standard deviation

meanColNames <- names(data)[meanColumns]
stdColNames <- names(data)[stdColumns]

## CREATE NEW DATA TABLE

# Create new data frame with only mean and std dev fields

meanstddata <- data[c("subjectID", "activityID", meanColNames, stdColNames)]

# Add descriptive activity names to data table

meanstddata_desc <- merge(meanstddata, activity_labels, by = "activityID", all=TRUE)

# Install and run reshape2 package

install.packages("reshape2")
library(reshape2)

# Melt the data for easier handling

meanstddata_desc_melt <- melt(meanstddata_desc,id=c("activityID","activityLabel","subjectID"))

# Calculate avg of each variable for each activity and subject

final_tidy_data <- dcast(meanstddata_desc_melt, subjectID + activityLabel + activityID ~ variable, mean)

# Create csv file with tidy data set

write.table(final_tidy_data, "./final_tidy_data.txt", row.names=FALSE)
