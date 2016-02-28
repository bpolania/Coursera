library('dplyr')
library('data.table')

## Create a table for Activities with columns "id" and "label" (activitiesTable)
# Read data frame from .txt file
activitiesTable <- read.table('./activity_labels.txt')
# rename variables
colnames(activitiesTable) <- c("id","label")

## Create a character vector for Features (features)
# Read data frame from .txt file
featuresTable <- read.table('./features.txt')
# Create character vector from data frame column
features <- as.character(featuresTable$V2)
# Format to more descriptive variable names
# substitute words and characters 
features <- sub("t","time",features)
features <- sub("f","frequency",features)
features <- sub("Body","_body",features)
features <- sub("Acc","_acceleration",features)
features <- sub("Gravity","_gravity",features)
features <- sub("Gyro","_gyroscope",features)
features <- sub("Mag","_magnitude",features)
features <- sub("Jerk","_jerk",features)
# formatting mean and standard deviation variables
features <- lapply(features, function(x) {
  if (grepl("mean\\(\\)",x)) {
    x <- sub("mean\\(\\)","",x)
    x <- paste("mean",x,sep = "_")
  }
  if (grepl("std\\(\\)",x)) {
    x <- sub("std\\(\\)","",x)
    x <- paste("standard_deviation",x,sep = "_")
  }
  if (grepl("\\-\\-",x)) {
    x <- sub("\\-\\-","\\-",x)
  }
  if (grepl("\\-$",x)) {
    x <- substr(x,1,nchar(x)-1)
  }
  return(x)
})
# subtituting dashes for undersocres
features <- sub("\\-","_",features)

## Create main data frame (humanActivity)
# Create Data empty data frame
humanActivity <- data.frame(matrix("", ncol = length(features), nrow = 0)) 
# Set featutes as variables
colnames(humanActivity) <- as.character(features)

# Create a character vector with the test subjects
# Read data frame from .txt file
testSubjectsTable <- read.table('./test/subject_test.txt')
# Create character vector from data frame column
testSubjects <- as.numeric(testSubjectsTable$V1)

# Create a character vector with the train subjects
# Read data frame from .txt file
trainSubjectsTable <- read.table('./train/subject_train.txt')
# Create character vector from data frame column
trainSubjects <- as.numeric(trainSubjectsTable$V1)

# Create a character vector with the test activities
# Read data frame from .txt file
testActivitiesTable <- read.table('./test/y_test.txt')
# Create character vector from data frame column
testActivities <- as.character(testActivitiesTable$V1)

testActivities <- unlist(lapply(testActivities, function(x) {
  if(x == "1") {x <- "walking"}
  if(x == "2") {x <- "walking_upstairs"}
  if(x == "3") {x <- "walking_downstairs"}
  if(x == "4") {x <- "sitting"}
  if(x == "5") {x <- "standing"}
  if(x == "6") {x <- "laying"}
  return(x)
}))


# Create a character vector with the train activities
# Read data frame from .txt file
trainActivitiesTable <- read.table('./train/y_train.txt')
# Create character vector from data frame column
trainActivities <- as.character(trainActivitiesTable$V1)

trainActivities <- unlist(lapply(trainActivities, function(x) {
  if(x == "1") {x <- "walking"}
  if(x == "2") {x <- "walking_upstairs"}
  if(x == "3") {x <- "walking_downstairs"}
  if(x == "4") {x <- "sitting"}
  if(x == "5") {x <- "standing"}
  if(x == "6") {x <- "laying"}
  return(x)
}))

## Create data frame with all test data
# Create Data Frame with test data
testDataFrame <- read.table('./test/X_test.txt')
# Add variable names to testDataFrame
colnames(testDataFrame) <- features
# Add "subject_id" column to testDataFrame
testDataFrame$subject_id <- testSubjects 
# Add "activity" column to testDataFrame
testDataFrame$activity <- testActivities
# Add "type" column to testDataFrame
testDataFrame$type <- "test"

## Create data frame with all train data
# Create Data Frame with train data
trainDataFrame <- read.table('./train/X_train.txt')
# Add variable names to trainDataFrame
colnames(trainDataFrame) <- features
# Add "subject_id" column to trainDataFrame
trainDataFrame$subject_id <- trainSubjects 
# Add "activity" column to trainDataFrame
trainDataFrame$activity <- trainActivities
# Add "type" column to trainDataFrame
trainDataFrame$type <- "train"

# select variables of the measurements on the mean and standard deviation
filteredColumns <- grep("mean_|standard_deviation|subject_id|activity|type",colnames(trainDataFrame), value = TRUE)

# Merge Test and Train data frames into one (finalDataFrame) and keep only 
# measurements on the mean and standard deviation
finalDataFrame <- rbind(testDataFrame,trainDataFrame)[filteredColumns]

# Transform finalDataFrame to a data.table
finalDataTable <- data.table(finalDataFrame)
# Remove "type" column 
finalDataTable <- finalDataTable[,type:=NULL]

# Subset finalDataTable to data.table with "subject_id" only
finalDataTableSubjectId <- finalDataTable[,activity:=NULL]
# Return data.table mean for each activity
finalDataTableSubjectId <- finalDataTableSubjectId[, lapply(.SD, mean), by = subject_id]
finalDataTableSubjectId[ , activity:=NA ]

# Transform finalDataFrame to a data.table
finalDataTable <- data.table(finalDataFrame)
# Remove "type" column 
finalDataTable <- finalDataTable[,type:=NULL]

# Subset finalDataTable to data.table with "activity" only
finalDataTableActivity <- finalDataTable[,subject_id:=NULL]
# Return data.table mean for each activity
finalDataTableActivity <- finalDataTableActivity[, lapply(.SD, mean), by = activity]
finalDataTableActivity[ ,subject_id:=NA ]

# Create definitve data.table
finalDataTable <- rbind(finalDataTableActivity,finalDataTableSubjectId)

# Write to file
write.table(finalDataTable,"./tidy_final.txt", row.name = FALSE)





