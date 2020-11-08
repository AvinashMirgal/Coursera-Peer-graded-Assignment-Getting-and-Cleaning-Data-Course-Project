##Download UCI HAR Dataset and store file locally
myfile <- "GACD_peergradeAssign.zip"
myurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(myurl, myfile)

##Load dplyr and tidyr
library(dplyr)
library(tidyr)

##Unzip locally stored zip file
myunzip <- unzip(myfile)

##Load activity labels
myALs1 <- tibble::as_tibble(read.table("UCI HAR Dataset/activity_labels.txt"))
myALs2 <- select(myALs1, V2)

##Load and select features that include mean or standard deviation
features1 <- read.table("UCI HAR Dataset/features.txt")
features2 <- tibble::as_tibble(features1)
features3 <- grep(".*mean.*|.*std.*", features1[,2])

##Create list of feature names
feature_names <- features2[features3, 2]

##Transpose this list of feature names
feature_names <- t(feature_names)

##Make appropriate labels for the data set with descriptive variable names
feature_names = gsub("-mean", " Mean", feature_names[1:79])
feature_names = gsub("-std", " Standard Deviation", feature_names[1:79])
feature_names = gsub("[.*().*]", "", feature_names[1:79])

feature_names = gsub("Acc", "Accelerator", feature_names[1:79])
feature_names = gsub("Mag", "Magnitude", feature_names[1:79])
feature_names = gsub("Gyro", "Gyroscope", feature_names[1:79])
feature_names = gsub("^t", "time", feature_names[1:79])
feature_names = gsub("^f", "frequency", feature_names[1:79])

##Coerce the proper dimensionality of the feature list
dim(feature_names) <- c(1,79)

##Load training data
##Extract only the measurements on the mean and standard deviation 
##for each measurement
##Appropriately label the data set with descriptive variable names
mytrain1 <- tibble::as_tibble(read.table("UCI HAR Dataset/train/X_train.txt"))[features3]
names(mytrain1) <- feature_names
mytrain2 <- tibble::as_tibble(read.table("UCI HAR Dataset/train/Y_train.txt"))
colnames(mytrain2) <- "Activities"
mytrain3 <- tibble::as_tibble(read.table("UCI HAR Dataset/train/subject_train.txt"))
colnames(mytrain3) <- "Subject Number"
mytrain4 <- tibble::as_tibble(cbind(mytrain3, mytrain2, mytrain1))


##Load testing data  
##Extract only the measurements on the mean and standard deviation 
##for each measurement
##Appropriately label the data set with descriptive variable names
test_data1 <- tibble::as_tibble(read.table("UCI HAR Dataset/test/X_test.txt"))[features3]
names(test_data1) <- feature_names
test_data2 <- tibble::as_tibble(read.table("UCI HAR Dataset/test/Y_test.txt"))
colnames(test_data2) <- "Activities"
test_data3 <- tibble::as_tibble(read.table("UCI HAR Dataset/test/subject_test.txt"))
colnames(test_data3) <- "Subject Number"
test_data4 <- tibble::as_tibble(cbind(test_data3, test_data2, test_data1))

##Merge the training and the test sets to create one data set
first_data_set <- tibble::as_tibble(rbind(mytrain4, test_data4))

##Use descriptive activity names to name the activities in the data set
first_data_set$"Activities"[first_data_set$"Activities" == 1] <- "Walking"
first_data_set$"Activities"[first_data_set$"Activities" == 2] <- "Walking Up Stairs"
first_data_set$"Activities"[first_data_set$"Activities" == 3] <- "Walking Down Stairs"
first_data_set$"Activities"[first_data_set$"Activities" == 4] <- "Sitting"
first_data_set$"Activities"[first_data_set$"Activities" == 5] <- "Standing"
first_data_set$"Activities"[first_data_set$"Activities" == 6] <- "Laying"

##Create a second, independent tidy data set with the average of each 
##variable for each activity and each subject

##Take averages for each activity
Average_Walking <- sapply(filter(first_data_set[3:81], first_data_set$"Activities" == "Walking"), mean)
Average_Walking_Up <- sapply(filter(first_data_set[3:81], first_data_set$"Activities" == "Walking Up Stairs"), mean)
Average_Walking_Down <- sapply(filter(first_data_set[3:81], first_data_set$"Activities" == "Walking Down Stairs"), mean)
Average_Sitting <- sapply(filter(first_data_set[3:81], first_data_set$"Activities" == "Sitting"), mean)
Average_Standing <- sapply(filter(first_data_set[3:81], first_data_set$"Activities" == "Standing"), mean)
Average_Laying <- sapply(filter(first_data_set[3:81], first_data_set$"Activities" == "Laying"), mean)


##Take averages for each subject
Average_Subject_1 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "1"), mean)
Average_Subject_2 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "2"), mean)
Average_Subject_3 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "3"), mean)
Average_Subject_4 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "4"), mean)
Average_Subject_5 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "5"), mean)
Average_Subject_6 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "6"), mean)
Average_Subject_7 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "7"), mean)
Average_Subject_8 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "8"), mean)
Average_Subject_9 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "9"), mean)
Average_Subject_10 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "10"), mean)
Average_Subject_11 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "11"), mean)
Average_Subject_12 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "12"), mean)
Average_Subject_13 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "13"), mean)
Average_Subject_14 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "14"), mean)
Average_Subject_15 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "15"), mean)
Average_Subject_16 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "16"), mean)
Average_Subject_17 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "17"), mean)
Average_Subject_18 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "18"), mean)
Average_Subject_19 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "19"), mean)
Average_Subject_20 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "20"), mean)
Average_Subject_21 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "21"), mean)
Average_Subject_22 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "22"), mean)
Average_Subject_23 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "23"), mean)
Average_Subject_24 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "24"), mean)
Average_Subject_25 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "25"), mean)
Average_Subject_26 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "26"), mean)
Average_Subject_27 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "27"), mean)
Average_Subject_28 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "28"), mean)
Average_Subject_29 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "29"), mean)
Average_Subject_30 <- sapply(filter(first_data_set[3:81], first_data_set$"Subject Number" == "30"), mean)

##Merge the two sets of averages

second_data_set <- cbind(Average_Walking, Average_Walking_Up, Average_Walking_Down, Average_Sitting, Average_Standing, Average_Laying, Average_Subject_1,
                         Average_Subject_2,
                         Average_Subject_3,
                         Average_Subject_4,
                         Average_Subject_5,
                         Average_Subject_6,
                         Average_Subject_7,
                         Average_Subject_8,
                         Average_Subject_9,
                         Average_Subject_10,
                         Average_Subject_11,
                         Average_Subject_12,
                         Average_Subject_13,
                         Average_Subject_14,
                         Average_Subject_15,
                         Average_Subject_16,
                         Average_Subject_17,
                         Average_Subject_18,
                         Average_Subject_19,
                         Average_Subject_20,
                         Average_Subject_21,
                         Average_Subject_22,
                         Average_Subject_23,
                         Average_Subject_24,
                         Average_Subject_25,
                         Average_Subject_26,
                         Average_Subject_27,
                         Average_Subject_28,
                         Average_Subject_29,
                         Average_Subject_30)

##Make Feature a labeled column rather than row names
## in accordance with tidy data theory

Feature <- rownames(second_data_set)
rownames(second_data_set) <- NULL
second_data_set <- cbind(Feature, second_data_set)


##First tidy data set:
View(first_data_set)

##Second tidy data set
View(second_data_set)

# Export TidyDataSet
write.table(first_data_set, './TidyDataSet.txt',sep='\t', row.names = FALSE)
