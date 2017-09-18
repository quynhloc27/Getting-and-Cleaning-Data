
# Load & unzip the data in R
URL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(URL,"Ssgalaxy")

unzip("Ssgalaxy")

# Read the train and test (x,y,sub)

train_x<-read.table("UCI HAR Dataset/train/X_train.txt")
train_sub<-read.table("UCI HAR Dataset/train/subject_train.txt",col.names=c("subject"))
train_y<-read.table("UCI HAR Dataset/train/Y_train.txt",col.names=c("activity_id"))

test_x<-read.table("UCI HAR Dataset/test/X_test.txt")
test_sub<-read.table("UCI HAR Dataset/test/subject_test.txt",col.names=c("subject"))
test_y<-read.table("UCI HAR Dataset/test/Y_test.txt",col.names = c("activity_id"))

# Combine the train and test data into one composite whole
train_data<-cbind(train_sub,train_x,train_y)
test_data<-cbind(test_sub,test_x,test_y)

data<-rbind(train_data,test_data)


# Select the wanted features (mean & std) from the set of attributes
feature_list<-read.table("UCI HAR Dataset/features.txt",col.names = c("attribute_number","attribute_name"))
wanted_feature<-grepl("mean|std",feature_list$attribute_name) & !grepl("meanFreq",feature_list$attribute_name)

wanted_data<-data[,wanted_feature]

# Associate descriptive activity names to name the activities in the data set. 

description<-read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id","activity"))
summary(description)

for (i in 1:6) {
        wanted_data$activity_id[wanted_data$activity_id == description[i,"activity_id"]]<-as.character(description[i,"activity"])
}


# Make data more user-friendly

feature_list$attribute_name<-gsub("\\(\\)","",feature_list$attribute_name)
feature_list$attribute_name<-gsub("Acc","acceleration-",feature_list$attribute_name)
feature_list$attribute_name<-gsub("Mag","magnitude-",feature_list$attribute_name)
feature_list$attribute_name<-gsub("BodyBody","body-",feature_list$attribute_name)
feature_list$attribute_name<-gsub("Body","body-",feature_list$attribute_name)
feature_list$attribute_name<-gsub("^t","time-",feature_list$attribute_name)
feature_list$attribute_name<-gsub("^f","frequency-",feature_list$attribute_name)
feature_list$attribute_name<-gsub("GyroJerk","gyro-jerk",feature_list$attribute_name)
feature_list$attribute_name<-gsub("Gyro","gyro",feature_list$attribute_name)
feature_list$attribute_name<-gsub("Jerk","jerk",feature_list$attribute_name)
feature_list$attribute_name<-gsub("--","-",feature_list$attribute_name)

rnames<-c("subject",as.vector(feature_list$attribute_name[wanted_feature==TRUE]),"activity")
names(wanted_data)<-rnames

# Create second, independent tidy data set with the average of each variable for each activity and each subject

install.packages("reshape2")
library(reshape2)

melted<-melt(wanted_data,id=c("subject","activity"))
tidy_data<-dcast(melted,activity+subject~variable,mean)
tidy_data

write.table(tidy_data,"tidy_data.txt",row.names = FALSE)
