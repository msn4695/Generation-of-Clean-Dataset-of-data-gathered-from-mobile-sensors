---
title: "CodeBook"
author: "Hafiz Mohammad Sohaib Naim Nizami"
output: html_document
---

---
title: "CodeBook"
author: "Hafiz Mohammad Sohaib Naim Nizami"
output: html_document
---


This codebook contains information about all the variables, the data, and any transformations or work that were performed to clean up the data in tidy dataset. 

## Variables

```{r}
activitylabels             "walking" "walking_upstairs" "walking_downstairs"
                           "sitting" "standing" "laying"

subject                    1 to 30
    Subject number
                           Unique numbers from 1 to 30 are given to each subject
                           
tbodyaccmeanx              Signed value between 0 and 1
    Described below

tbodyaccmeany              Signed value between 0 and 1
    Described below

tbodyaccmeanz              Signed value between 0 and 1
    Described below

tbodyaccstdx               Signed value between 0 and 1
    Described below

tbodyaccstdy               Signed value between 0 and 1
    Described below

tbodyaccstdz               Signed value between 0 and 1
    Described below

tgravityaccmeanx           Signed value between 0 and 1
    Described below

tgravityaccmeany           Signed value between 0 and 1
    Described below

tgravityaccmeanz           Signed value between 0 and 1
    Described below

tgravityaccstdx            Signed value between 0 and 1
    Described below

tgravityaccstdy            Signed value between 0 and 1
    Described below

tgravityaccstdz            Signed value between 0 and 1
    Described below

tbodyaccjerkmeanx          Signed value between 0 and 1
    Described below

tbodyaccjerkmeany          Signed value between 0 and 1
    Described below

tbodyaccjerkmeanz          Signed value between 0 and 1
    Described below

tbodyaccjerkstdx           Signed value between 0 and 1
    Described below

tbodyaccjerkstdy           Signed value between 0 and 1
    Described below

tbodyaccjerkstdz           Signed value between 0 and 1
    Described below

tbodygyromeanx             Signed value between 0 and 1
    Described below

tbodygyromeany             Signed value between 0 and 1
    Described below

tbodygyromeanz             Signed value between 0 and 1
    Described below

tbodygyrostdx              Signed value between 0 and 1
    Described below

tbodygyrostdy              Signed value between 0 and 1
    Described below

tbodygyrostdz              Signed value between 0 and 1
    Described below

tbodygyrojerkmeanx         Signed value between 0 and 1
    Described below

tbodygyrojerkmeany         Signed value between 0 and 1
    Described below

tbodygyrojerkmeanz         Signed value between 0 and 1
    Described below

tbodygyrojerkstdx          Signed value between 0 and 1
    Described below

tbodygyrojerkstdy          Signed value between 0 and 1
    Described below

tbodygyrojerkstdz          Signed value between 0 and 1
    Described below

tbodyaccmagmean            Signed value between 0 and 1
    Described below

tbodyaccmagstd             Signed value between 0 and 1
    Described below

tgravityaccmagmean         Signed value between 0 and 1
    Described below

tgravityaccmagstd          Signed value between 0 and 1
    Described below

tbodyaccjerkmagmean        Signed value between 0 and 1
    Described below

tbodyaccjerkmagstd         Signed value between 0 and 1
    Described below

tbodygyromagmean           Signed value between 0 and 1
    Described below

tbodygyromagstd            Signed value between 0 and 1
    Described below

tbodygyrojerkmagmean       Signed value between 0 and 1
    Described below

tbodygyrojerkmagstd        Signed value between 0 and 1
    Described below

fbodyaccmeanx              Signed value between 0 and 1
    Described below

fbodyaccmeany              Signed value between 0 and 1
    Described below

fbodyaccmeanz              Signed value between 0 and 1
    Described below

fbodyaccstdx               Signed value between 0 and 1
    Described below

fbodyaccstdy               Signed value between 0 and 1
    Described below

fbodyaccstdz               Signed value between 0 and 1
    Described below

fbodyaccjerkmeanx          Signed value between 0 and 1
    Described below

fbodyaccjerkmeany          Signed value between 0 and 1
    Described below

fbodyaccjerkmeanz          Signed value between 0 and 1
    Described below

fbodyaccjerkstdx           Signed value between 0 and 1
    Described below

fbodyaccjerkstdy           Signed value between 0 and 1
    Described below

fbodyaccjerkstdz           Signed value between 0 and 1
    Described below

fbodygyromeanx             Signed value between 0 and 1
    Described below

fbodygyromeany             Signed value between 0 and 1
    Described below

fbodygyromeanz             Signed value between 0 and 1
    Described below

fbodygyrostdx              Signed value between 0 and 1
    Described below

fbodygyrostdy              Signed value between 0 and 1
    Described below

fbodygyrostdz              Signed value between 0 and 1
    Described below

fbodyaccmagmean            Signed value between 0 and 1
    Described below

fbodyaccmagstd             Signed value between 0 and 1
    Described below

fbodybodyaccjerkmagmean    Signed value between 0 and 1
    Described below

fbodybodyaccjerkmagstd     Signed value between 0 and 1
    Described below

fbodybodygyromagmean       Signed value between 0 and 1
    Described below

fbodybodygyromagstd        Signed value between 0 and 1
    Described below

fbodybodygyrojerkmagmean   Signed value between 0 and 1
    Described below

fbodybodygyrojerkmagstd    Signed value between 0 and 1
    Described below
```

## Features information of original data given in features_info.txt

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyAcc-xyz, fbodyAccJerk-XYZ, fbodygyro-xyz, fBodyAccJerkMag, fBodyGyroMag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'x, y or z' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
