# load reshape library required for cast & melt
library(reshape2)

# define variable for download destination file
# and source file
dataDestination <- "Dataset.zip"
dataSource <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# if dataDestination file doesn't exist download and unzip
if (!file.exists(dataDestination)) {
  download.file(dataSource,dataDestination)
}

#if UCI HAR Dataset directory doesn't exist unzip Dataset.zip
if (!file.exists("UCI HAR Dataset")) {
  unzip(dataDestination)
}

# load activity and feature labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
featureLabels <- read.table("UCI HAR Dataset/features.txt")
colnames(activityLabels) <- c("activity","activityLabel")

# load train data and create single table
#trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
#trainActivity <- read.table("UCI HAR Dataset/train/Y_train.txt")
#trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
#train <- cbind(trainSubjects,trainActivity,trainData)

# load test data
testData <- read.table("UCI HAR Dataset/test/X_test.txt")
# add column names
colnames(testData) <- c(featureLabels[,2])
# remove unwanted columns
testData <- testData[ , names(testData) %in% featureLabels[grep(".*mean.*|.*std.*",featureLabels[,2]),2]]
# load activity type
testActivity <- read.table("UCI HAR Dataset/test/Y_test.txt")
# add column name
colnames(testActivity) <- c("activity")
# replace activity id with label
testActivity <- merge(testActivity,activityLabels,by="activity")
# load subjects
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
# add column name
colnames(testSubjects) <- c("subject")
# merge data into single table
test <- cbind(testSubjects,activity = testActivity[,2],testData)

# load train data
trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
# add column names
colnames(trainData) <- c(featureLabels[,2])
# remove unwanted columns
trainData <- trainData[ , names(trainData) %in% featureLabels[grep(".*mean.*|.*std.*",featureLabels[,2]),2]]
# load activity type
trainActivity <- read.table("UCI HAR Dataset/train/Y_train.txt")
# add column name
colnames(trainActivity) <- c("activity")
# replace activity id with label
trainActivity <- merge(trainActivity,activityLabels,by="activity")
# load subjects
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
# add column name
colnames(trainSubjects) <- c("subject")
# merge data into single table
train <- cbind(trainSubjects,activity = trainActivity[,2],trainData)


# merge data sets and add labels
mergedData <- rbind(train,test)

# turn activities and subjects into factors
mergedData$subject <- as.factor(mergedData$subject)
mergedData$activity <- as.factor(mergedData$activity)

# apply melt function and calculate means
tidy <- dcast(melt(mergedData, id = c("subject","activity")), subject + activity ~ variable, mean)

# save out datafile as tidy.txt
write.table(tidy,"tidy.txt",row.names=FALSE,quote=FALSE)