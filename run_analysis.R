rm(list=ls())
setwd("/Users/sophiafernando/Documents/CourseraDataScience/GettingCleaningData/data")

test_X <- read.table("./UCI HAR Dataset/test/X_test.txt") # 2947 of 561 variables
test_label <- read.table("./UCI HAR Dataset/test/y_test.txt") # 2947 of 1 variable - label for activity

train_X <- read.table("./UCI HAR Dataset/train/X_train.txt") #7352 of 561 variables
train_label <- read.table("./UCI HAR Dataset/train/y_train.txt") #7352 of 1 variables - label for activity

activity_label <- read.table("./UCI HAR Dataset/activity_labels.txt") # links class labels with activity names
features <- read.table("./UCI HAR Dataset/features.txt") #list of all 561 features/variables

subject_train <-read.table("./UCI HAR Dataset/train/subject_train.txt") #subject for each train observation
subject_test <-read.table("./UCI HAR Dataset/test/subject_test.txt") #subject for each test observation

# Creating Narrow Data Set for Test Set
# Add column from features as column heading for test_X
test_X <-'names<-'(test_X,features$V2)
# only include mean and std deviation observation columns
test_X_sub <- NULL
test_X_sub <- test_X[,grepl("\\<mean()\\>",names(test_X))|grepl("\\<std()\\>",names(test_X))]
# Add subject & test activity name
library(plyr)
test_label_activity <- NULL
test_label_activity <- join(test_label, activity_label)
test_X_sub <- cbind(test_X_sub,subject_test,test_label_activity$V2)
# Create a narrow test set
library(reshape2)
test_melt <- melt(test_X_sub,id = c("V1","test_label_activity$V2"))
names(test_melt)[1]<-"subject"
names(test_melt)[2]<-"activity"
names(test_melt)[3]<-"testname"
names(test_melt)[4]<-"testvalue"
# End Creation Narrow Data Set for Test Set

# Follow same process for train data
# Add column from features as column heading for train_X
train_X <-'names<-'(train_X,features$V2)
# only include mean and std deviation observation columns
train_X_sub <- NULL
train_X_sub <- train_X[,grepl("\\<mean()\\>",names(train_X))|grepl("\\<std()\\>",names(train_X))]
# Add subject & train activity name
library(plyr)
train_label_activity <- NULL
train_label_activity <- join(train_label, activity_label)
train_X_sub <- cbind(train_X_sub,subject_train,train_label_activity$V2)
# Create a narrow train set
library(reshape2)
train_melt <- NULL
train_melt <- melt(train_X_sub,id = c("V1","train_label_activity$V2"))
names(train_melt)[1]<-"subject"
names(train_melt)[2]<-"activity"
names(train_melt)[3]<-"testname"
names(train_melt)[4]<-"testvalue"
# End Creation Narrow Data Set for train Set

# Merge test and train sets
all_melt <- NULL
all_melt <- rbind (test_melt, train_melt)

#Creates a second, independent tidy data set with the average of 
#each variable for each activity and each subject. 
tidy_data <- NULL
tidy_data <- ddply(all_melt, c("subject","activity", "testname"), summarise,
               mean = mean(testvalue));
write.csv(tidy_data,"tidy_data_fin.csv")
dim(tidy_data)
