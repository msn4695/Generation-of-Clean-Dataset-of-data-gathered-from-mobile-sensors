This readme file explains the contents of the repository along with brief description of the process through which a clean tid dataset was generated.

## Contents of this repository

This repository consists of 4 files

* CodeBook.md : This markdown document indicates all the variables of the tidy data set.
* README.md : This markdown document explains the transformations involved step by step.
* run_analysis.R : This R script was used to transform the given data to a tidy data set.
* tidyset.txt : This is the tidy data set produced as an output from the R script.

## Running the R script

To run the R script one must have the following files in their working directory

* /train/X_train.txt
* /test/X_test.txt
* features.txt
* /test/y_test.txt
* /train/y_train.txt
* /test/subject_test.txt
* /train/subject_train.txt
* dplyr package must be installed in R for this script to run

Once you have the unzipped folder as the working directory you can run the given R script which will create a tidy data set in a file named tidyset.txt

## Step-wise Transformation

### Step 1

Both datasets train and test are loaded in separate dataframes.
Feature list is loaded which is formatted to good variable names.
This vector is now used to rename the columns of both data frames

### Step 2

Out of 561 columns of the data frames only the ones with mean and standard deviation are used (68 in number).
meanFreq() columns are not used as they are derived columns.

### Step 3

Activity labels are loaded are binded to the data frames of test and train.
Labels are then replaced by more descriptive names.

### Step 4

Subjects are now loaded and binded to the test and train data frames.

### Step 5

Merge both data frames together

#### Step 6

dplyr package is used to group merged data frame by subject and activity and written to tidyset.txt in the working directory.
