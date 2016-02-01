# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "ds.zip")

unzip("ds.zip")

subj_text <- read.table('UCIHARDataset/test/subject_text.txt', sep = "/n")

'"H:\2016\s\school\coursera\Getting and Cleaning Data\getting-cleaning-data-project\UCIHARDataset\test\subject_test.txt"'


subject_test <- read.table("subject_test.txt", sep = "\n")
names(subject_test) <- "subject_id"
subject_train <- read.table("subject_train.txt", sep = "\n")
names(subject_train) <- "subject_id"

y_train <- read.table("y_train.txt", sep = " ")
names(y_train) <- "activity_name"
y_test <- read.table("y_test.txt", sep = " ")
names(y_test) <- "activity_name"


X_train <- read.table("X_train.txt", sep = "")
X_test <- read.table("X_test.txt", sep = "" )

# Merge subject_test and y_test
m1 <- cbind(subject_test, y_test)

# Merge subject_train and y_train
m2 <- cbind(subject_train, y_train)


# Merge m1 with X_test
m3 <- cbind(m1, X_test)

# Merge m2 with X_train
m4 <- cbind(m2, X_train)

# Merge m3 and m4 together
m5 <- rbind(m3, m4)

# 4. Appropriately labels the data set with descriptive variable names.

# The features tables contains the names of the variables, so let's load it.
features <- read.table("UCIHARDataset/features.txt", sep = "", stringsAsFactors = FALSE)

# Add names in features to m5
names(m5)[3:563] <- features$V2

# Now let's identify which columns involve the mean or standard deviation

vec_mean_std <- grepl("mean|std", names(m5), ignore.case = TRUE)

m6 <- m5[, c(1:2, which(vec_mean_std))]

# 3. Uses the descriptive activity names for the data set.
activity_labels <- read.table("UCIHARDataset/activity_labels.txt", stringsAsFactors = FALSE)
library(dplyr)
m7 <- left_join(m6, activity_labels, by=c("activity_name" = "V1"))

# Let's use the descriptive activity names instead of non-descriptive integers

m7$activity_name <- m7$V2


# 5. From the data set in step 4, creates a second,
#    independent tidy data set with the average of each variable for each
#    activity and each subject.
m7 <- select(m7, -V2)
m8 <- group_by(m7, subject_id, activity_name)
m9 <- summarize_each(m8, funs(mean))


# Below code will help with the codebook.

vars <- names(m9)
types <- sapply(m9, class)


m9_codebook <- as.data.frame(cbind(vars, types), row.names = FALSE)

write.csv(m9_codebook, "m9_codebook.csv")
write.csv(m9, "m9.csv")



