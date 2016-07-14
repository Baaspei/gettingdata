setwd("~/R/03_getting_data/week4")

# Column names for data frame
columns <- read.delim("UCI HAR Dataset/features.txt", header = FALSE, sep=" ", stringsAsFactors = FALSE)

# clean labels
columns$V2 <- sub("\\(", "", columns$V2)
columns$V2 <- sub("\\)", "", columns$V2)
columns$V2 <- sub(",", "", columns$V2)
columns$V2 <- gsub("-", "_", columns$V2)

#Activity names
activity.names <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity.names) <- c("actIndex", "activity")



## Test Data
# data file
x_test <- read.table(file = "UCI HAR Dataset/test/X_test.txt", header = FALSE)

# activity label
labels_test <- read.delim("UCI HAR Dataset/test/y_test.txt", header = FALSE)

# subject number 
subject_test <- read.delim("UCI HAR Dataset/test/subject_test.txt", header = FALSE)


## Train Data
# data file
x_train <- read.table(file = "UCI HAR Dataset/train/X_train.txt", header = FALSE)

# activity label
labels_train <- read.delim("UCI HAR Dataset/train/y_train.txt", header = FALSE)

# subject number 
subject_train <- read.delim("UCI HAR Dataset/train/subject_train.txt", header = FALSE)


## Merge and label sets
x_combined <- rbind(x_test, x_train)
names(x_combined) <- columns$V2




# Extract only the mean() and std() fields
set <- x_combined[,grep("mean|std",names(x_combined))]
set$subject <- rbind(subject_test, subject_train)[,1]
set$activity <- rbind(labels_test, labels_train)[,1]

#label activity
set$activity <- activity.names[set$activity,2]


#Buld dataframe for results
result <- aggregate(set[,1:79], by=list(Subject=set$subject, Activity=set$activity), mean)


# write tidy result out
write.table(result, "tidy_result.txt", row.name = FALSE)
