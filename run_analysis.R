### 1. Merges the training and the test sets to create one data set

# Configuration
data_dir <- "."
raw_dir_name <- "UCI HAR Dataset"
raw_dir_path <- paste(data_dir, raw_dir_name, sep = "/")
tidy_file_name <- "tidy_data_set.txt"
tidy_file_path <- paste(data_dir, tidy_file_name, sep = "/")

## Load files

# Load activity labels
activity_labels <- read.table(paste(raw_dir_path, "activity_labels.txt", sep = "/"), col.names = c("class_label", "activity_name"))

# Load features
features <- read.table(paste(raw_dir_path, "features.txt", sep = "/"), col.names = c("id","feature"))

# Load test files
subject_test <- read.table(paste(raw_dir_path, "test/subject_test.txt", sep = "/"), col.names = c("subject"))
X_test <- read.table(paste(raw_dir_path, "test/X_test.txt", sep = "/"), col.names = features$feature)
y_test <- read.table(paste(raw_dir_path, "test/y_test.txt", sep = "/"), col.names = c("label"))
total_acc_x_test <- read.table(paste(raw_dir_path, "test/Inertial Signals/total_acc_x_test.txt", sep = "/"), col.names = paste("totalAcc...X.", 1:128, sep = ""))
total_acc_y_test <- read.table(paste(raw_dir_path, "test/Inertial Signals/total_acc_y_test.txt", sep = "/"), col.names = paste("totalAcc...Y.", 1:128, sep = ""))
total_acc_z_test <- read.table(paste(raw_dir_path, "test/Inertial Signals/total_acc_z_test.txt", sep = "/"), col.names = paste("totalAcc...Z.", 1:128, sep = ""))
body_acc_x_test <- read.table(paste(raw_dir_path, "test/Inertial Signals/body_acc_x_test.txt", sep = "/"), col.names = paste("bodyAcc...X.", 1:128, sep = ""))
body_acc_y_test <- read.table(paste(raw_dir_path, "test/Inertial Signals/body_acc_y_test.txt", sep = "/"), col.names = paste("bodyAcc...Y.", 1:128, sep = ""))
body_acc_z_test <- read.table(paste(raw_dir_path, "test/Inertial Signals/body_acc_z_test.txt", sep = "/"), col.names = paste("bodyAcc...Z.", 1:128, sep = ""))
body_gyro_x_test <- read.table(paste(raw_dir_path, "test/Inertial Signals/body_gyro_x_test.txt", sep = "/"), col.names = paste("bodyGyro...X.", 1:128, sep = ""))
body_gyro_y_test <- read.table(paste(raw_dir_path, "test/Inertial Signals/body_gyro_y_test.txt", sep = "/"), col.names = paste("bodyGyro...Y.", 1:128, sep = ""))
body_gyro_z_test <- read.table(paste(raw_dir_path, "test/Inertial Signals/body_gyro_z_test.txt", sep = "/"), col.names = paste("bodyGyro...Z.", 1:128, sep = ""))

# Load train files
subject_train <- read.table(paste(raw_dir_path, "train/subject_train.txt", sep = "/"), col.names = c("subject"))
X_train <- read.table(paste(raw_dir_path, "train/X_train.txt", sep = "/"), col.names = features$feature)
y_train <- read.table(paste(raw_dir_path, "train/y_train.txt", sep = "/"), col.names = c("label"))
total_acc_x_train <- read.table(paste(raw_dir_path, "train/Inertial Signals/total_acc_x_train.txt", sep = "/"), col.names = paste("totalAcc...X.", 1:128, sep = ""))
total_acc_y_train <- read.table(paste(raw_dir_path, "train/Inertial Signals/total_acc_y_train.txt", sep = "/"), col.names = paste("totalAcc...Y.", 1:128, sep = ""))
total_acc_z_train <- read.table(paste(raw_dir_path, "train/Inertial Signals/total_acc_z_train.txt", sep = "/"), col.names = paste("totalAcc...Z.", 1:128, sep = ""))
body_acc_x_train <- read.table(paste(raw_dir_path, "train/Inertial Signals/body_acc_x_train.txt", sep = "/"), col.names = paste("bodyAcc...X.", 1:128, sep = ""))
body_acc_y_train <- read.table(paste(raw_dir_path, "train/Inertial Signals/body_acc_y_train.txt", sep = "/"), col.names = paste("bodyAcc...Y.", 1:128, sep = ""))
body_acc_z_train <- read.table(paste(raw_dir_path, "train/Inertial Signals/body_acc_z_train.txt", sep = "/"), col.names = paste("bodyAcc...Z.", 1:128, sep = ""))
body_gyro_x_train <- read.table(paste(raw_dir_path, "train/Inertial Signals/body_gyro_x_train.txt", sep = "/"), col.names = paste("bodyGyro...X.", 1:128, sep = ""))
body_gyro_y_train <- read.table(paste(raw_dir_path, "train/Inertial Signals/body_gyro_y_train.txt", sep = "/"), col.names = paste("bodyGyro...Y.", 1:128, sep = ""))
body_gyro_z_train <- read.table(paste(raw_dir_path, "train/Inertial Signals/body_gyro_z_train.txt", sep = "/"), col.names = paste("bodyGyro...Z.", 1:128, sep = ""))

# Merges the test sets
test_set <- cbind(subject_test, y_test, X_test, total_acc_x_test, total_acc_y_test, total_acc_z_test, body_acc_x_test, body_acc_y_test, body_acc_z_test, body_gyro_x_test, body_gyro_y_test, body_gyro_z_test)

# Merges the train sets
train_set <- cbind(subject_train, y_train, X_train, total_acc_x_train, total_acc_y_train, total_acc_z_train, body_acc_x_train, body_acc_y_train, body_acc_z_train, body_gyro_x_train, body_gyro_y_train, body_gyro_z_train)

# Merges the training and the test sets to create one data set
data_set <- rbind(train_set, test_set)

### 2. Extracts only the measurements on the mean and standard deviation for each measurement
library(dplyr)
data_set <- select(data_set, c(subject, label, grep("\\.mean\\.|\\.std\\.", names(data_set))))

### 3. Uses descriptive activity names to name the activities in the data set
data_set <- data_set %>% merge(activity_labels, by.x = "label", by.y = "class_label", all.x = TRUE) %>% select(-label)

### 4. Appropriately labels the data set with descriptive variable names.
data_set <- rename(data_set, activity=activity_name)

### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
id <- c("activity", "subject")
data_set_names <- names(data_set) 
measure.vars <- data_set_names[! data_set_names %in% id]
melt_data_set <- melt(data_set, id=id, measure.vars = measure.vars)
average_data_set <- dcast(melt_data_set, activity + subject ~ variable, mean)
write.table(average_data_set, file = tidy_file_path, row.names = FALSE)