#download dataset if not exists
datasetFilename <- 'activityDataset.zip';
if (!file.exists(datasetFilename)) {
    download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
                  datasetFilename, mode='wb');
}

harSetFolder <- 'UCI HAR Dataset';
#unzip dataset if not already unzipped
if (!file.exists(harSetFolder)) {
    unzip(datasetFilename);
}


#load feature names and labels
featureNames <- read.table(file.path(harSetFolder, 'features.txt'),header = FALSE, sep = ' ');
featureNames <- as.character(featureNames[,2]);
activityLabels <- read.table(file.path(harSetFolder, 'activity_labels.txt'),header = FALSE, sep = ' ');
activityLabels[,2] <- as.character(activityLabels[,2]);

#filter for Extracts only the measurements on the mean and standard deviation for each measurement.
featuresFilter <- grepl(x = featureNames, pattern = "mean\\(\\)|std\\(\\)")

#prepare names - replace -mean with Mean
featureNames <- featureNames[featuresFilter];
featureNames <- gsub('-mean\\(\\)(-)*','Mean', featureNames);
featureNames <- gsub('-std\\(\\)(-)*','Std', featureNames);


#function to load dataset 
loadDataSet <- function(datasetName = 'test') {
    testSetPath <- file.path(harSetFolder, datasetName, paste('X_', datasetName, '.txt', sep=''));
    testSubjectPath <- file.path(harSetFolder, datasetName, paste('subject_', datasetName, '.txt', sep=''));
    testLabelsPath <- file.path(harSetFolder, datasetName, paste('y_', datasetName, '.txt', sep=''));    
    if (!file.exists(testSetPath) || !file.exists(testSubjectPath) || !file.exists(testLabelsPath)) {
       stop(paste("dataset not found - ", datasetName)); 
    }
    
    #load activity
    activity <- read.table(testLabelsPath, header = FALSE, col.names = "activity");
    
    #load subjects
    subjects <- read.table(testSubjectPath, header = FALSE, col.names = "subject");
    
    #load data and filter it by required features
    data <- read.table(testSetPath, header = FALSE)[, featuresFilter];
    
    #give data feature names
    colnames(data) <- featureNames;
    
    #combine subjects acitvity and data
    result <- cbind(cbind(subjects, activity), data);
    result
}

#load test dataset
test <- loadDataSet('test');

#load train dataset
train <- loadDataSet('train');

#combine datasets by rows
allData <- rbind(test, train);

#transform subjects into factors 
allData$subject <- as.factor(allData$subject);

#transform activity into factor using activity labels
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2]);

#new dataset with mean of features per activity per subject
tidy <- aggregate(. ~ activity + subject, data=allData, FUN=mean);

#write dataset to a file
write.table(tidy, 'tidy.txt', row.names = FALSE, quote = FALSE);
