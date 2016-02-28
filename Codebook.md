# Codebook

## JHU Coursera Getting and Cleaning Data Project Assignment

This assignment takes data from the UCI Machine Learning Repository:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Data Transformations

For each subject and activity, the data variables from the raw data set involving mean and standard deviation have been extracted and averaged. They are presented below.

## Tidy Data Set Fields with Mean and Standard Deviation

The first three fields are subject and activity descriptions. The remaining 86 fields are normalized sensor values.

`[1] "subjectID"`                           
` [2] "activityLabel" `                      
 `[3] "activityID"     `                     
 `[4] "tBodyAcc-mean()-X"`                   
 `[5] "tBodyAcc-mean()-Y"         `          
 `[6] "tBodyAcc-mean()-Z"          `         
 `[7] "tGravityAcc-mean()-X"        `        
 `[8] "tGravityAcc-mean()-Y"         `       
 `[9] "tGravityAcc-mean()-Z"          `      
`[10] "tBodyAccJerk-mean()-X"          `     
`[11] "tBodyAccJerk-mean()-Y"           `    
`[12] "tBodyAccJerk-mean()-Z"            `   
`[13] "tBodyGyro-mean()-X"                `  
`[14] "tBodyGyro-mean()-Y"`        
`[15] "tBodyGyro-mean()-Z"  `          
`[16] "tBodyGyroJerk-mean()-X"  `            
`[17] "tBodyGyroJerk-mean()-Y"   `           
`[18] "tBodyGyroJerk-mean()-Z"    `          
`[19] "tBodyAccMag-mean()"         `         
`[20] "tGravityAccMag-mean()"       `        
`[21] "tBodyAccJerkMag-mean()"      `        
`[22] "tBodyGyroMag-mean()"         `        
`[23] "tBodyGyroJerkMag-mean()"     `        
`[24] "fBodyAcc-mean()-X"           `        
`[25] "fBodyAcc-mean()-Y"           `        
`[26] "fBodyAcc-mean()-Z"                   `    
`[27] "fBodyAcc-meanFreq()-X"               `    
`[28] "fBodyAcc-meanFreq()-Y"               `    
`[29] "fBodyAcc-meanFreq()-Z"               `    
`[30] "fBodyAccJerk-mean()-X"               `    
`[31] "fBodyAccJerk-mean()-Y"               `    
`[32] "fBodyAccJerk-mean()-Z"               `    
`[33] "fBodyAccJerk-meanFreq()-X"           `    
`[34] "fBodyAccJerk-meanFreq()-Y"           `    
`[35] "fBodyAccJerk-meanFreq()-Z"           `    
`[36] "fBodyGyro-mean()-X"                  `    
`[37] "fBodyGyro-mean()-Y"                  `    
`[38] "fBodyGyro-mean()-Z"                  `    
`[39] "fBodyGyro-meanFreq()-X"              `    
`[40] "fBodyGyro-meanFreq()-Y"              `    
`[41] "fBodyGyro-meanFreq()-Z"              `    
`[42] "fBodyAccMag-mean()"                  `    
`[43] "fBodyAccMag-meanFreq()"              `    
`[44] "fBodyBodyAccJerkMag-mean()"          `    
`[45] "fBodyBodyAccJerkMag-meanFreq()"      `    
`[46] "fBodyBodyGyroMag-mean()"             `    
`[47] "fBodyBodyGyroMag-meanFreq()"         `    
`[48] "fBodyBodyGyroJerkMag-mean()"         `    
`[49] "fBodyBodyGyroJerkMag-meanFreq()"     `    
`[50] "angle(tBodyAccMean,gravity)"         `    
`[51] "angle(tBodyAccJerkMean),gravityMean)"`    
`[52] "angle(tBodyGyroMean,gravityMean)"    `    
`[53] "angle(tBodyGyroJerkMean,gravityMean)"`    
`[54] "angle(X,gravityMean)"                `     
`[55] "angle(Y,gravityMean)"                `    
`[56] "angle(Z,gravityMean)"                `    
`[57] "tBodyAcc-std()-X"                    `    
`[58] "tBodyAcc-std()-Y"                    `    
`[59] "tBodyAcc-std()-Z"                    `    
`[60] "tGravityAcc-std()-X"                 `    
`[61] "tGravityAcc-std()-Y"                 `    
`[62] "tGravityAcc-std()-Z"                 `    
`[63] "tBodyAccJerk-std()-X"                `    
`[64] "tBodyAccJerk-std()-Y"                `    
`[65] "tBodyAccJerk-std()-Z"                `    
`[66] "tBodyGyro-std()-X"                   `    
`[67] "tBodyGyro-std()-Y"                   `       
`[68] "tBodyGyro-std()-Z"                   `      
`[69] "tBodyGyroJerk-std()-X"               `    
`[70] "tBodyGyroJerk-std()-Y"               `    
`[71] "tBodyGyroJerk-std()-Z"               `    
`[72] "tBodyAccMag-std()"                   `    
`[73] "tGravityAccMag-std()"                `    
`[74] "tBodyAccJerkMag-std()"               `    
`[75] "tBodyGyroMag-std()"                  `    
`[76] "tBodyGyroJerkMag-std()"              `    
`[77] "fBodyAcc-std()-X"                    `    
`[78] "fBodyAcc-std()-Y"                    `    
`[79] "fBodyAcc-std()-Z"                    `    
`[80] "fBodyAccJerk-std()-X"                `    
`[81] "fBodyAccJerk-std()-Y"                `    
`[82] "fBodyAccJerk-std()-Z"                `    
`[83] "fBodyGyro-std()-X"                   `    
`[84] "fBodyGyro-std()-Y"                   `    
`[85] "fBodyGyro-std()-Z"                   `    
`[86] "fBodyAccMag-std()"                   `    
`[87] "fBodyBodyAccJerkMag-std()"           `    
`[88] "fBodyBodyGyroMag-std()"              `    
`[89] "fBodyBodyGyroJerkMag-std()"`

UCI Machine Learning Repository citation:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
