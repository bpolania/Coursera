
Data Set Code Book: Human Activity Samsung Device Measures

##How the data table was generated

Create a table for Activities with columns "id" and "label" (activitiesTable) and read data frame from .txt file and rename variables

Create a character vector for Features (features) and read data frame from .txt file
Create character vector from data frame column and format to more descriptive variable names, substitute words and characters, 
format mean and standard deviation variables and subtitute dashes for undersocres

Create main data frame (humanActivity) and create an empty data frame and set featutes as variables

Create a character vector with the test subjects and read data frame from .txt file
Create a character vector from data frame column

Create a character vector with the train subjects and read data frame from .txt file
Create character vector from data frame column

Create a character vector with the test activities and read data frame from .txt file
Create character vector from data frame column

Create a character vector with the train activities and read data frame from .txt file
Create character vector from data frame column

Create data frame with all test data and create Data Frame with test data
add variable names to testDataFrame, add "subject_id" column to testDataFrame, 
add "activity" column to testDataFrame and add "type" column to testDataFrame

Create data frame with all train data and create Data Frame with train data
Add variable names to trainDataFrame, add "subject_id" column to trainDataFrame,
add "activity" column to trainDataFrame and add "type" column to trainDataFrame

Select variables of the measurements on the mean and standard deviation

Merge Test and Train data frames into one (finalDataFrame) and keep only measurements on the mean and standard deviation

Transform finalDataFrame to a data.table and remove "type" column 

Subset finalDataTable to data.table with "subject_id" only and return data.table mean for each activity

Transform finalDataFrame to a data.table and remove "type" column 

Subset finalDataTable to data.table with "activity" only, return data.table mean for each activity and create definitve data.table

Finally, write to output text file

---------------------------------------------------------------------

Codebook
February, 2016
Codebook prepared by Boris Polania, based on data set she entered as text file (R test.table).

Field label: activity
Variable: Activity
Variable type: character
Allowable values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING, NA

Field label: subject_id
Variable: Subject Id
Variable type: numeric
Allowable values: Integer numeric values


Field label: mean_time_body_acceleration_X
Variable: Mean time body acceleration X
Variable type: numeric
Allowable values: mean time body acceleration on X axis values

Field label: mean_time_body_acceleration_Y
Variable: Mean time body acceleration Y
Variable type: numeric
Allowable values: mean time body acceleration on Y axis values

Field label: mean_time_body_acceleration_Z
Variable: Mean time body acceleration Z
Variable type: numeric
Allowable values: mean time body acceleration on Z axis values

Field label: standard_deviation_time_body_acceleration_X
Variable: Standard deviation time body acceleration X
Variable type: numeric
Allowable values: Standard deviation time body acceleration on X axis values

Field label: standard_deviation_time_body_acceleration_Y
Variable: Standard deviation time body acceleration Y
Variable type: numeric
Allowable values: Standard deviation time body acceleration on Y axis values

Field label: standard_deviation_time_body_acceleration_Z
Variable: Standard deviation time body acceleration Z
Variable type: numeric
Allowable values: Standard deviation time body acceleration on Z axis values

Field label: mean_time_gravity_acceleration_X
Variable: Mean time gravity acceleration X
Variable type: numeric
Allowable values: Mean time gravity acceleration on X axis

Field label: mean_time_gravity_acceleration_Y
Variable: Mean time gravity acceleration Y
Variable type: numeric
Allowable values: Mean time gravity acceleration on Y axis

Field label: mean_time_gravity_acceleration_Z
Variable: Mean time gravity acceleration Z
Variable type: numeric
Allowable values: Mean time gravity acceleration on Z axis

Field label: standard_deviation_time_gravity_acceleration_X
Variable: Standard deviation time gravity acceleration X
Variable type: numeric
Allowable values: Standard deviation time gravity acceleration on X axis

Field label: standard_deviation_time_gravity_acceleration_Y
Variable: Standard deviation time gravity acceleration Y
Variable type: numeric
Allowable values: Standard deviation time gravity acceleration on Y axis

Field label: standard_deviation_time_gravity_acceleration_Z
Variable: Standard deviation time gravity acceleration Z
Variable type: numeric
Allowable values: Standard deviation time gravity acceleration on Z axis

Field label: mean_time_body_acceleration_jerk_X
Variable: Mean time body acceleration jerk X
Variable type: numeric
Allowable values: Mean time body acceleration jerk on X axis

Field label: mean_time_body_acceleration_jerk_Y
Variable: Mean time body acceleration jerk Y
Variable type: numeric
Allowable values: Mean time body acceleration jerk on Y axis

Field label: mean_time_body_acceleration_jerk_Z
Variable: Mean time body acceleration jerk Z
Variable type: numeric
Allowable values: Mean time body acceleration jerk on Z axis

Field label: standard_deviation_time_body_acceleration_jerk_X
Variable: Standard deviation time body acceleration jerk X
Variable type: numeric
Allowable values: Standard deviation time body acceleration jerk on X axis

Field label: standard_deviation_time_body_acceleration_jerk_Y
Variable: Standard deviation time body acceleration jerk Y
Variable type: numeric
Allowable values: Standard deviation time body acceleration jerk on Y axis

Field label: standard_deviation_time_body_acceleration_jerk_Z
Variable: Standard deviation time body acceleration jerk Z
Variable type: numeric
Allowable values: Standard deviation time body acceleration jerk on Z axis

Field label: mean_time_body_gyroscope_X
Variable: Mean time body gyroscope X
Variable type: numeric
Allowable values: Mean time body gyroscope on X axis

Field label: mean_time_body_gyroscope_Y
Variable: Mean time body gyroscope Y
Variable type: numeric
Allowable values: Mean time body gyroscope on Y axis

Field label: mean_time_body_gyroscope_Z
Variable: Mean time body gyroscope Z
Variable type: numeric
Allowable values: Mean time body gyroscope on Z axis

Field label: standard_deviation_time_body_gyroscope_X
Variable: Standard deviation time body gyroscope X
Variable type: numeric
Allowable values: Standard deviation time body gyroscope on X axis

Field label: standard_deviation_time_body_gyroscope_Y
Variable: Standard deviation time body gyroscope Y
Variable type: numeric
Allowable values: Standard deviation time body gyroscope on Y axis

Field label: standard_deviation_time_body_gyroscope_Z
Variable: Standard deviation time body gyroscope Z
Variable type: numeric
Allowable values: Standard deviation time body gyroscope on Z axis

Field label: mean_time_body_gyroscope_jerk_X
Variable: Mean time body gyroscope jerk X
Variable type: numeric
Allowable values: Mean time body gyroscope jerk on X axis

Field label: mean_time_body_gyroscope_jerk_Y
Variable: Mean time body gyroscope jerk Y
Variable type: numeric
Allowable values: Mean time body gyroscope on jerk Y axis

Field label: mean_time_body_gyroscope_jerk_Z
Variable: Mean time body gyroscope jerk Z
Variable type: numeric
Allowable values: Mean time body gyroscope on jerk Z axis

Field label: standard_deviation_time_body_gyroscope_jerk_X
Variable: Standard deviation time body gyroscope jerk X
Variable type: numeric
Allowable values: Standard deviation time body gyroscope on jerk X axis

Field label: standard_deviation_time_body_gyroscope_jerk_Y
Variable: Standard deviation time body gyroscope jerk Y
Variable type: numeric
Allowable values: Standard deviation time body gyroscope on jerk Y axis

Field label: standard_deviation_time_body_gyroscope_jerk_Z
Variable: Standard deviation time body gyroscope jerk Z
Variable type: numeric
Allowable values: Standard deviation time body gyroscope on jerk Z axis

Field label: mean_time_body_acceleration_magnitude
Variable: Mean time body acceleration magnitude
Variable type: numeric
Allowable values: Mean time body acceleration magnitude

Field label: standard_deviation_time_body_acceleration_magnitude
Variable: Standard deviation time body acceleration magnitude
Variable type: numeric
Allowable values: Standard deviation time body acceleration magnitude

Field label: mean_time_body_acceleration_magnitude
Variable: Mean time body acceleration magnitude
Variable type: numeric
Allowable values: Mean time body acceleration magnitude

Field label: standard_deviation_time_body_acceleration_magnitude
Variable: Standard deviation time body acceleration magnitude
Variable type: numeric
Allowable values: Standard deviation time body acceleration magnitude

Field label: mean_time_gravity_acceleration_magnitude
Variable: Mean time gravity acceleration magnitude
Variable type: numeric
Allowable values: Mean time gravity acceleration magnitude

Field label: standard_deviation_time_gravity_acceleration_magnitude
Variable: Standard deviation time gravity acceleration magnitude
Variable type: numeric
Allowable values: Standard deviation time gravity acceleration magnitude

Field label: mean_time_body_acceleration_jerk_magnitude
Variable: Mean time body acceleration jerk magnitude
Variable type: numeric
Allowable values: Mean time body acceleration jerk magnitude

Field label: standard_deviation_time_body_acceleration_jerkmagnitude
Variable: Standard deviation time body acceleration jerk magnitude
Variable type: numeric
Allowable values: Standard deviation time body acceleration jerk magnitude

Field label: mean_time_body_gyroscope_magnitude
Variable: Mean time body gyroscope magnitude
Variable type: numeric
Allowable values: Mean time body gyroscope magnitude

Field label: standard_deviation_time_body_gyroscope_magnitude
Variable: Standard deviation time body gyroscope magnitude
Variable type: numeric
Allowable values: Standard deviation time body agyroscope magnitude

Field label: mean_time_body_agyroscope_jerk_magnitude
Variable: Mean time body gyroscope jerk magnitude
Variable type: numeric
Allowable values: Mean time body gyroscope jerk magnitude

Field label: standard_deviation_time_body_gyroscope_jerkmagnitude
Variable: Standard deviation time body gyroscope jerk magnitude
Variable type: numeric
Allowable values: Standard deviation time body gyroscope jerk magnitude

Field label: mean_frequency_body_acceleration_X
Variable: Mean frequency body acceleration X
Variable type: numeric
Allowable values: mean frequency body acceleration on X axis values

Field label: mean_frequency_body_acceleration_Y
Variable: Mean frequency body acceleration Y
Variable type: numeric
Allowable values: mean frequency body acceleration on Y axis values

Field label: mean_frequency_body_acceleration_Z
Variable: Mean frequency body acceleration Z
Variable type: numeric
Allowable values: mean frequency body acceleration on Z axis values

ield label: mean_frequency_body_acceleration_jerk_X
Variable: Mean frequency body acceleration jerk X
Variable type: numeric
Allowable values: mean frequency body acceleration jerk on X axis values

Field label: mean_frequency_body_acceleration_jerk_Y
Variable: Mean frequency body acceleration jerk Y
Variable type: numeric
Allowable values: mean frequency body acceleration jerk on Y axis values

Field label: mean_frequency_body_acceleration_jerk_Z
Variable: Mean frequency body acceleration jerk Z
Variable type: numeric
Allowable values: mean frequency body acceleration jerk on Z axis values

Field label: mean_frequency_body_gyroscope_X
Variable: Mean frequency body gyroscope X
Variable type: numeric
Allowable values: Mean frequency body gyroscope on X axis

Field label: mean_frequency_body_gyroscope_Y
Variable: Mean frequency body gyroscope Y
Variable type: numeric
Allowable values: Mean frequency body gyroscope on Y axis

Field label: mean_frequency_body_gyroscope_Z
Variable: Mean frequency body gyroscope Z
Variable type: numeric
Allowable values: Mean frequency body gyroscope on Z axis

Field label: mean_frequency_body_acceleration_magnitude
Variable: Mean frequency body acceleration magnitude
Variable type: numeric
Allowable values: Mean frequency body acceleration magnitude

Field label: mean_frequency_bodyBody_acceleration_jerk_magnitude
Variable: Mean frequency bodyBody acceleration jerk magnitude
Variable type: numeric
Allowable values: Mean frequency bodyBody acceleration jerk magnitude

Field label: mean_frequency_bodyBody_gyroscope_magnitude
Variable: Mean frequency bodyBody gyroscope magnitude
Variable type: numeric
Allowable values: Mean frequency bodyBody gyroscope magnitude

Field label: mean_frequency_bodyBody_gyroscope_jerk_magnitude
Variable: Mean frequency bodyBody gyroscope jerk magnitude
Variable type: numeric
Allowable values: Mean frequency bodyBody gyroscope jerk magnitude

