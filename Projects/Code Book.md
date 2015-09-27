#### The “run_analysis.R” script can be interpreted as follows:

- 1.Download the files to your working directory and load the following datasets into R
  - Training (X_Train, y_Train, subject_train)
  - Test (X_Test, y_Test, subject_test)
  - Features dataset: Clean the column names of the features dataset for “()”, and “-“
- 2.Apply column names to the X_train & X_test dataset by using the features dataset
- 3.Merge the X_Train & X_Test datasets to create a dataset for “x” of dimensions 10,299 * 561
- 4.Merge the subject_train & subject_test to create dataset for “subject” of dimensions 10,299 * 1
- 5.Read in the activity labels dataset and apply the colnames to y_train & y_test
- 6.Merge the y_Train & y_Test datasets to create a dataset for “y” of dimensions 10,299 * 1
- 7.Isolate columns from the “x” which have words “mean” and “std”. Name these datasets “X_mean” and “X_std” accordingly.
- 8.Create a dataset called “merged_data” which is a combination of "Subject", "y", "X_mean", & "X_Std"
- 9.Apply relevant column names to the “merged_data”
- 10.Create a final “tidy_data” with the average of each variable for each activity & each subject
- 11.Output the final “tidy_data” as a text file
