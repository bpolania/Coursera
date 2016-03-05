
## Data Set Code Book: Human Activity Samsung Device Measures

#How to generate data table

* Create a table for Activities with columns "id" and "label" (activitiesTable) and read data frame from .txt file and rename variables

* Create a character vector for Features (features) and read data frame from .txt file
* Create character vector from data frame column and format to more descriptive variable names, substitute words and characters, format mean and standard deviation variables and subtitute dashes for undersocres

* Create main data frame (humanActivity) and create an empty data frame and set featutes as variables

* Create a character vector with the test subjects and read data frame from .txt file
* Create a character vector from data frame column

* Create a character vector with the train subjects and read data frame from .txt file
* Create character vector from data frame column

* Create a character vector with the test activities and read data frame from .txt file
* Create character vector from data frame column

* Create a character vector with the train activities and read data frame from .txt file
* Create character vector from data frame column

* Create data frame with all test data and create Data Frame with test data, add variable names to testDataFrame, add "subject_id" column to testDataFrame, add "activity" column to testDataFrame and add "type" column to testDataFrame

* Create data frame with all train data and create Data Frame with train data, add variable names to trainDataFrame, add "subject_id" column to trainDataFrame, add "activity" column to trainDataFrame and add "type" column to trainDataFrame

* Select variables of the measurements on the mean and standard deviation

* Merge Test and Train data frames into one (finalDataFrame) and keep only measurements on the mean and standard deviation

* Transform finalDataFrame to a data.table and remove "type" column

* Subset finalDataTable to data.table with "subject_id" only and return data.table mean for each activity

* Transform finalDataFrame to a data.table and remove "type" column

* Subset finalDataTable to data.table with "activity" only, return data.table mean for each activity and create definitve data.table

* Finally, write to output text file

---------------------------------------------------------------------
