Data Cleaning Project
## This code assumes that the Samsung data is in your working directory, as stated in the assignment.
## Therefore, all data files must be present in the working directory for the code to work properly.

## Reading data into R
activitytest <- read.table("Y_test.txt")
activitytrain <- read.table("Y_train.txt")
subjecttest <- read.table("subject_test.txt")
subjecttrain <- read.table("subject_train.txt")
featurestest <- read.table("X_test.txt")
featurestrain <- read.table("X_train.txt")

## Merge test & train data
activitydata <- rbind(activitytest,activitytrain)
subjectdata <- rbind(subjecttest,subjecttrain)
featuresdata <- rbind(featurestest,featurestrain)
## Set names of variables
names(activitydata) <- c("activity")
names(subjectdata) <- c("subject")
featurenames <- read.table("features.txt")
names(featuresdata) <- featurenames$V2
## Combine to get full data frame
combineddata <- cbind(activitydata, subjectdata, featuresdata)

## Identify features of mean or standard deviation
featurenames.fix <- featurenames$V2[grep("mean\\(\\)|std\\(\\)", featurenames$V2)]
## Subset the data
subdatanames <- c("activity", "subject", as.character(featurenames.fix))
subdata <- combineddata[, subdatanames]

## Convert activity labels
activitylabels <- read.table("activity_labels.txt")
subdata[, 1] <- activitylabels[subdata[, 1], 2]
## Convert variable names
names(subdata) <- gsub("^t", "time", names(subdata))
names(subdata) <- gsub("^f", "frequency", names(subdata))
names(subdata) <- gsub("Acc", "Accelerometer", names(subdata))
names(subdata) <- gsub("Gyro", "Gyroscope", names(subdata))
names(subdata) <- gsub("Mag", "Magnitude", names(subdata))
names(subdata) <- gsub("BodyBody", "Body", names(subdata))
names(subdata) <- gsub("mean", "Mean", names(subdata))
names(subdata) <- gsub("std", "Standard Deviation", names(subdata))

## Output subdata set (independent, tidy)
library(plyr)
subdata2 <- aggregate(. ~subject + activity, subdata, mean)
subdata2 <- subdata2[order(subdata2$subject, subdata2$activity), ]
write.table(subdata2, file = "tidydata.txt",row.name=FALSE)