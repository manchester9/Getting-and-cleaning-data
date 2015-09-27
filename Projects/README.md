#### Getting and cleaning data Coursera Project

###### Problem overview and statement
- One of the most exciting areas in all of data science right now is wearable computing - see for example this article ( http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/ ). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
  - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
  
- You should create one R script called run_analysis.R that does the following:
-   1.Merges the training and the test sets to create one data set.
-   2.Extracts only the measurements on the mean and standard deviation for each measurement. 
-   3.Uses descriptive activity names to name the activities in the data set
-   4.Appropriately labels the data set with descriptive activity names. 
-   5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

###### The solution is in the "run_analysis.R" script that does the following:
- 1. Create a "data" directory if one does not exist
- 2. Download the files to the "data" directory
- 3. Load the training, test, and subject datasets
- 4. Load the features, & activity labels datasets
- 5. Clean the features dataset for by removing "()", and "-" from the column names
- 6. Apply column names to all datasets
- 7. Merge all datasets and keep only those columns that contain the mean and standard deviation
- 8. Create a tidy dataset that consists of the average value of each variable for each subject and activity
- 9. Output a tidy_data.txt file
