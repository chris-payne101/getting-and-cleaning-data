# Code Book

This code book summarizes the resulting data fields in tidy.txt. The data is the combination of 2 datasets (train and test), each containing 3 data files (subject id (subject_test.txt / subject_train.txt), activity id (y_test.txt / y_train.txt)and measurements(X_test.txt / X_train.txt)).

### Subject / Activity Identifiers
* subject : ID of subject from whom the measurement was taken	
* activity : textual description of activity being undertaken, clasified as either: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. Value created by using the lookup value contained in the activity_labels.txt 	

### Subject / Activity Mean Measurements
Each value has been calculated as the mean value for each subject / activity combination:
* tBodyAcc-mean()-X	
* tBodyAcc-mean()-Y	
* tBodyAcc-mean()-Z	
* tBodyAcc-std()-X	
* tBodyAcc-std()-Y	
* tBodyAcc-std()-Z	
* tGravityAcc-mean()-X	
* tGravityAcc-mean()-Y	
* tGravityAcc-mean()-Z	
* tGravityAcc-std()-X	
* tGravityAcc-std()-Y	
* tGravityAcc-std()-Z	
* tBodyAccJerk-mean()-X	
* tBodyAccJerk-mean()-Y	
* tBodyAccJerk-mean()-Z	
* tBodyAccJerk-std()-X	
* tBodyAccJerk-std()-Y	
* tBodyAccJerk-std()-Z	
* tBodyGyro-mean()-X	
* tBodyGyro-mean()-Y	
* tBodyGyro-mean()-Z	
* tBodyGyro-std()-X	
* tBodyGyro-std()-Y	
* tBodyGyro-std()-Z	
* tBodyGyroJerk-mean()-X	
* tBodyGyroJerk-mean()-Y	
* tBodyGyroJerk-mean()-Z	
* tBodyGyroJerk-std()-X	
* tBodyGyroJerk-std()-Y	
* tBodyGyroJerk-std()-Z	
* tBodyAccMag-mean()	
* tBodyAccMag-std()	
* tGravityAccMag-mean()	
* tGravityAccMag-std()	
* tBodyAccJerkMag-mean()	
* tBodyAccJerkMag-std()	
* tBodyGyroMag-mean()	
* tBodyGyroMag-std()	
* tBodyGyroJerkMag-mean()	
* tBodyGyroJerkMag-std()	
* fBodyAcc-mean()-X	
* fBodyAcc-mean()-Y	
* fBodyAcc-mean()-Z	
* fBodyAcc-std()-X	
* fBodyAcc-std()-Y	
* fBodyAcc-std()-Z	
* fBodyAcc-meanFreq()-X	
* fBodyAcc-meanFreq()-Y	
* fBodyAcc-meanFreq()-Z	
* fBodyAccJerk-mean()-X	
* fBodyAccJerk-mean()-Y	
* fBodyAccJerk-mean()-Z	
* fBodyAccJerk-std()-X	
* fBodyAccJerk-std()-Y	
* fBodyAccJerk-std()-Z	
* fBodyAccJerk-meanFreq()-X	
* fBodyAccJerk-meanFreq()-Y	
* fBodyAccJerk-meanFreq()-Z	
* fBodyGyro-mean()-X	
* fBodyGyro-mean()-Y	
* fBodyGyro-mean()-Z	
* BodyGyro-std()-X	
* fBodyGyro-std()-Y	
* fBodyGyro-std()-Z	
* fBodyGyro-meanFreq()-X	
* fBodyGyro-meanFreq()-Y	
* fBodyGyro-meanFreq()-Z	
* fBodyAccMag-mean()	
* fBodyAccMag-std()	
* fBodyAccMag-meanFreq()	
* fBodyBodyAccJerkMag-mean()	
* fBodyBodyAccJerkMag-std()	
* fBodyBodyAccJerkMag-meanFreq()	
* fBodyBodyGyroMag-mean()	
* fBodyBodyGyroMag-std()	
* fBodyBodyGyroMag-meanFreq()	
* fBodyBodyGyroJerkMag-mean()	
* fBodyBodyGyroJerkMag-std()	
* fBodyBodyGyroJerkMag-meanFreq()	
