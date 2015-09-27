## Getting and cleaning data Project

# The "run_analysis.R" script does the following:

- 1. Create a "data" directory if one does not exist
- 2. Download the files to the "data" directory
- 3. Load the training, test, and subject datasets
- 4. Load the features, & activity labels datasets
- 5. Clean the features dataset for "()", "-", and covert all names to lower case
- 6. Apply column names to all datasets
- 7. Merge all datasets and keep only those columns that contain the mean and standard deviation
- 8. Create a tidy dataset that consists of the average value of each variable for each subject and activity
