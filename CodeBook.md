#CodeBook

	This CodeBook describes data that contained in tidy.txt file

	File contains averaged data of measurements that taken from the merged raw test and train datasets of "Human Activity Recognition Using Smartphones Dataset"
	Version 1.0 - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Initial Data Collection

Initial dataset was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Filtering initial data 

Only features that contains "mean" and "standard deviation" of raw measurements was used for production of a new tidy dataset

#Processing

Test and Train part of the filtered initial dataset were merged together for production of tidy dataset.

Labels of activities were used instead of activity ids.

Final dataset contains measurements averaged per subject per activity from.

#Identifiers
   	"subject" - id of subject
   	"activity" - label of activity - one of WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING

#Measurements Data

   	"tBodyAccMeanX" 
 	"tBodyAccMeanY"
 	"tBodyAccMeanZ"
 	"tBodyAccStdX"
 	"tBodyAccStdY"
 	"tBodyAccStdZ"
 	"tGravityAccMeanX"
 	"tGravityAccMeanY"
 	"tGravityAccMeanZ"
 	"tGravityAccStdX"
 	"tGravityAccStdY"
 	"tGravityAccStdZ"
 	"tBodyAccJerkMeanX"
 	"tBodyAccJerkMeanY"
 	"tBodyAccJerkMeanZ"
 	"tBodyAccJerkStdX"
 	"tBodyAccJerkStdY"
 	"tBodyAccJerkStdZ"
 	"tBodyGyroMeanX"
 	"tBodyGyroMeanY"
 	"tBodyGyroMeanZ"
 	"tBodyGyroStdX"
 	"tBodyGyroStdY"
 	"tBodyGyroStdZ"
 	"tBodyGyroJerkMeanX"
 	"tBodyGyroJerkMeanY"
 	"tBodyGyroJerkMeanZ"
 	"tBodyGyroJerkStdX"
 	"tBodyGyroJerkStdY"
 	"tBodyGyroJerkStdZ"
 	"tBodyAccMagMean"
 	"tBodyAccMagStd"
 	"tGravityAccMagMean"
 	"tGravityAccMagStd"
 	"tBodyAccJerkMagMean"
 	"tBodyAccJerkMagStd"
 	"tBodyGyroMagMean"
 	"tBodyGyroMagStd"
 	"tBodyGyroJerkMagMean"
 	"tBodyGyroJerkMagStd"
 	"fBodyAccMeanX"
 	"fBodyAccMeanY"
 	"fBodyAccMeanZ"
 	"fBodyAccStdX"
 	"fBodyAccStdY"
 	"fBodyAccStdZ"
 	"fBodyAccJerkMeanX"
 	"fBodyAccJerkMeanY"
 	"fBodyAccJerkMeanZ"
 	"fBodyAccJerkStdX"
 	"fBodyAccJerkStdY"
 	"fBodyAccJerkStdZ"
 	"fBodyGyroMeanX"
 	"fBodyGyroMeanY"
 	"fBodyGyroMeanZ"
 	"fBodyGyroStdX"
 	"fBodyGyroStdY"
 	"fBodyGyroStdZ"
 	"fBodyAccMagMean"
 	"fBodyAccMagStd"
 	"fBodyBodyAccJerkMagMean"
 	"fBodyBodyAccJerkMagStd"
 	"fBodyBodyGyroMagMean"
 	"fBodyBodyGyroMagStd"
 	"fBodyBodyGyroJerkMagMean"
 	"fBodyBodyGyroJerkMagStd"