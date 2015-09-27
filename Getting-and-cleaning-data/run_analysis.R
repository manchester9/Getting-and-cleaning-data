# Set working directory
setwd("C:/Users/Roland.Ferrao/Desktop/Desktop/Miscellaneous/R Getting & cleaning data/Project")

# Check if a data folder exists; if not then create one
if (!file.exists("data")) {dir.create("data")}

# Download file to the data directory
fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile = "./data/activityDataset.zip"
download.file(fileURL,destfile)
unzip(destfile,exdir = "./data")

########------########
## Part 1: Importing training, test, and features data 
# Import training data
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt") # 7352 by 561
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt") # 7352 by 1
features <- read.table("./data/UCI HAR Dataset/features.txt") # 561 by 2
colnames(X_train) <- features[, 2]

# Import subject_train: rows are subjects
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt") # 7352 by 1

# Import test data
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt") # 2947 by 561
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt") # 2947 by 1
colnames(X_test) <- features[, 2]
# Import subject_test: rows are subjects
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt") # 2947 by 1

# Merge to create a subject, activity label and subject information dataset
X <- rbind(X_train, X_test)

########------########
## Part 2 & Part 3
# Read in the activity labels dataset
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

# Add descriptive names to the different levels
y_train <- apply(y_train, 2, function(x) levels(activity_labels[, 2])[x]) # training data
y_test <- apply(y_test, 2, function(x) levels(activity_labels[, 2])[x]) # test data

y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

## Isolate mean and standard deviation variables
# Isolate variable names with "mean"
i <- grep("mean", colnames(X))
X_mean <- X[, i]
# Isolate variable names with "std"
j <- grep("std", colnames(X))
X_std <- X[, j]

########------########
## Part 4: Label merged dataset set with descriptive names
merged_data <-cbind(subject, y, X_mean, X_std)
colnames(merged_data)[1] <- "Subject"  # assign column name
colnames(merged_data)[2] <- "Activity"  # assign column name
merged_data[1:3, 1:3]  # take a look

########------########
## Part 5: create a second tidy data set with the average of each variable for each activity and each subject
tidy_data <- aggregate(merged_data, by=list(merged_data$Subject, merged_data$Activity), mean)  

dim(tidy_data)
tidy_data[1:100, 1:3] #take a look

########------########
# Write the dataset to a text file
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)
