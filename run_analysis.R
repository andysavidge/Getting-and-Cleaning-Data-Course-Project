library(data.table)

## get two files of obs. of 561 var. and 'rbind' all obs.
xtrain=read.table("./data/X_train.txt",colClasses="numeric",header=FALSE) ## 
## 7352 obs. of 561 variables in X_train.txt
xtest=read.table("./data/X_test.txt",colClasses="numeric",header=FALSE) ## 
## stest: 2947 obs. of 561 variables in X_test.txt
xtt=rbind(xtrain,xtest)
## xtt: 2947 obs. of 561 variables in rbind data.frame
xtt=as.data.table(xtt) ## for use with data.table 

## get, clean, & use features.txt var. to label time&frequency var.: 561 time & frequency domain variables 
##  (and get subset of all "mean" & "std" variables) for another tidy data set
features <- fread("./data/features.txt")  # read 561 variable names
features$V2 <- tolower(features$V2)  ## 561-feature vector with time and frequency domain variables
findchr=c("\\(","\\)","\\-","\\,","tbody","tgravity","fbody")#"gyrostd","jerkstd","magstd", "anglex","angley","anglez","accstd","accmean","bodyacc","bodygyro","gravitymean","gyromean","jerkmean","gravityacc","accjerk","accmag","jerkmag","gyromag","gyrojerk")
replace=c("",   "",   ",",  "" ,"timebody","timegravity","freqbody")#"gyro.std" ,"jerk.std","mag.std",  "angle.x.","angle.y.","angle.z.","acc.std","acc.mean","body.acc","body.gyro","gravity.mean","gyro.mean","jerk.mean","gravity.acc","acc.jerk","acc.mag","jerk.mag","gyro.mag","gyro.jerk")
j=0
for(ff in findchr){
      j=j+1
      features$V2 <- gsub(ff, replace[j],features$V2)  ## remove dash, comma, parentheses in names;
}
names(xtt)=features$V2 ## colnames  # assign 561 col names to all the obs. in the data.table
## select only 'mean' and 'std' col names  goes from 561 col to 86 col
col.with.mean=grep("mean", names(xtt))  # get var names with 'mean' in label 53 and store in col.with.mean
col.with.std=grep("std", names(xtt)) # get var names with 'std' in label 33 and store in col.with.std
col.mean.std=c(col.with.mean, col.with.std) # combine var names with 'mean' or 'std' in label 86 items
xtt=xtt[,col.mean.std, with=FALSE] ## now only have 86 col of the original 561 col data table
## xtt: 10299 obs. of  86 variables

## read two files of activity names (1,2,3,4,5,6), 'rbind' together
## get activity labels, clean the label names then replace 
ytrainraw <- fread("./data/y_train.txt",colClasses="character") ##  activity names for 7352 row obs.
# ytrainraw: is row 7352 by 1 item a number for the subject who carried out the experiment
ytestraw <- fread("./data/y_test.txt",colClasses="character") ## activity names for 2947 row observations
# ytestraw: is row 2947 by 1 item a number
ytraintest=rbind(ytrainraw,ytestraw) ## bind rows to get 7352+2947 == 10299 observations

# get activity labels, clean labels names then replace the number activity names with the words of the activity labels
activity.labels <- fread("./data/activity_labels.txt") ## read and clean activity_labels.txt
## six activty labels of the 561-feature vector that Links the class labels with their activity name.
activity.labels$V2 <- tolower(activity.labels$V2)
activity.labels$V2 <- gsub("\\_", "",activity.labels$V2)
j=0
## change chr 1 to 6 to names of activity labels in the combined data frame
for(i in c("1","2","3","4","5","6")){
      j=j+1
      ytraintest$V1=gsub(i, activity.labels$V2[j], ytraintest$V1)
}
names(ytraintest) <- c("activity")
xtt=cbind(ytraintest,xtt) ## bind the activity labels to the data table

# get subject names (1:30) then replace the subject number a clearer name of Subject.1 etc.
subjecttrain=fread("./data/subject_train.txt",,colClasses="character") ##  identifier of the subject who carried out the experiment
## Classes ‘data.table’ and 'data.frame':      7352 obs. of  1 variable:
subjecttest=fread("./data/subject_test.txt",,colClasses="character") ##  identifier of the subject who carried out the experiment
## Classes ‘data.table’ and 'data.frame':      2947 obs. of  1 variable:
straintest=rbind(subjecttrain,subjecttest)
names(straintest) <- c("subject")
## bind the subject identifiers to the data table
xtt=cbind(straintest,xtt)
str(xtt)

library(reshape2)
molten=melt(xtt,id.var=c("subject", "activity"),measure.vars=c(3:88))
dcasted=dcast(subject+activity~variable,data=molten,fun=mean)
write.table(dcasted, './data/tidydata.txt')
