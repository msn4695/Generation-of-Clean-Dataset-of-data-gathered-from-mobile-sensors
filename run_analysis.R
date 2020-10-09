# dplyr package is required for this script. 
# So, first checking for its presence

if (!library(dplyr, logical.return=TRUE)) {
        print("'dplyr' package not found. Installing package")
        install.packages(dplyr)
        break
} else {
        print("'dplyr' package is present. Loading package")
        library(dplyr)
}


# the folder named "UCI HAR Dataset" should be inside the working directory
# for the script to work. This folder is available inside the zip file 
# provided/given for project

# Loading "train" and "test" tables as dataframes

train <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")


# Loading features names

features_table <- read.table("./UCI HAR Dataset/features.txt")
features <- features_table[[2]] # loaded as table bcoz a table is given in file


# cleaning features names

features <- gsub("-", "", features) 
features <- tolower(features)
features <- gsub("\\()", "", features)


# replacing names of dataframes with names in features

names(train) <- features
names(test) <- features


# getting mean and std

mean_cols <- grep("mean", names(test))
meanfreq_cols <- grep("meanfreq", names(test))
angle_cols <- grep("angle", names(test))
mean_cols2 <- setdiff(mean_cols, meanfreq_cols)
meancols <- setdiff(mean_cols2, angle_cols) # contains column numbers to use
stdcols <- grep("std", names(test)) # contains column numbers to use


# selecting the required columns from each dataframe into new dataframes

gtrain <- train[, c(meancols, stdcols)]
gtest <- test[, c(meancols, stdcols)]


# loading activity labels

train_activitylabels <- readLines("./UCI HAR Dataset/train/y_train.txt")
test_activitylabels <- readLines("./UCI HAR Dataset/test/y_test.txt")


# adding activity labels to the dataframes

gtrain$activitylabels <- train_activitylabels
gtest$activitylabels <- test_activitylabels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
# I used the table given in "activity_labels.txt" to increase the activity label
# changing capability of user. This way you just need to change activity labels
# in the file rather than in code
for (i in activity_labels$V1)
        gtest$activitylabels <- gsub(as.character(i), 
                                     activity_labels$V2[i], 
                                     gtest$activitylabels)
for (i in activity_labels$V1)
        gtrain$activitylabels <- gsub(as.character(i), 
                                      activity_labels$V2[i], 
                                      gtrain$activitylabels)
# these for loops will automatically set the activity labels according 
# to the "activity_labels.txt" file


# re-positioning activity labels to first

gtest <- cbind(gtest["activitylabels"], gtest[1:(length(gtest)-1)])
gtrain <- cbind(gtrain["activitylabels"], gtrain[1:(length(gtrain)-1)]) 


# loading and adding subjects

train_subjects <- readLines("./UCI HAR Dataset/train/subject_train.txt")
test_subjects <- readLines("./UCI HAR Dataset/test/subject_test.txt")
gtrain$subjects <- train_subjects
gtest$subjects <- test_subjects


# re-positioning subjects labels to first

gtrain <- cbind(gtrain["subjects"], gtrain[1:(length(gtrain)-1)])
gtest <- cbind(gtest["subjects"], gtest[1:(length(gtest)-1)])


# combining data

combined_data <- rbind(gtrain, gtest)


# getting average of each variable in a new dataframe using 'dplyr'

final <- combined_data %>% group_by(activitylabels, subjects) %>% 
        summarize(across(.fns = mean))
final_df <- as.data.frame(final) # pipe operator produced a tibble


# Arranging data according to activity labels and subjects

final_df$subjects <- as.numeric(final_df$subjects)
final_df <- arrange(final_df, activitylabels, subjects)


# writing the data into the file tidyset.txt as output 

write.table(final_df, "./UCI HAR Dataset/tidyset.txt", row.names=FALSE)

# End
