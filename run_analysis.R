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
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt",header=FALSE,col.names = c("activity","activityLabel"))
featureLabels <- read.table("UCI HAR Dataset/features.txt",header=FALSE)
featureLabels[,2] <- gsub('[-()]', '',featureLabels[,2])

# Create combined data set
# load test data and remove unwanted columns
testData <- read.table("UCI HAR Dataset/test/X_test.txt",header = FALSE, col.names = c(featureLabels[,2]) )
testData <- testData[ , names(testData) %in% featureLabels[grepl("mean|std",featureLabels[,2]),2]]

# load activity type
testActivity <- read.table("UCI HAR Dataset/test/Y_test.txt", header = FALSE, col.names = c("activity"))

# load subjects
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE, col.names = c("subject"))

# merge data into single table
testActivity <- merge(testActivity,activityLabels, by="activity",all.x=TRUE)
test <- cbind(testSubjects,activity = testActivity[,2],testData)

# load train data and remove unwanted columns
trainData <- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE, col.names = c(featureLabels[,2]))
trainData <- trainData[ , names(trainData) %in% featureLabels[grepl("mean|std",featureLabels[,2]),2]]

# load activity type
trainActivity <- read.table("UCI HAR Dataset/train/Y_train.txt", header=FALSE, col.names = c("activity"))

# load subjects
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = c("subject"))

# change activity ID for activity description 
# and merge data into single table
trainActivity <- merge(trainActivity,activityLabels, by="activity",all.x=TRUE)
train <- cbind(trainSubjects,activity = trainActivity[,2],trainData)

# merge data sets 
mergedData <- rbind(train,test)

# apply melt function and cast
meltedData <- melt(mergedData, id = c("subject","activity"))
tidy <- dcast(meltedData, subject+activity~variable, mean)

# save out datafile as tidy.txt
write.table(tidy,"tidy.txt",row.names=FALSE,quote=FALSE)