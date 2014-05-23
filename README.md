Getting.and.Cleaning.Data.Course.Project
========================================

This README.md file is part of the Course Project for the MOOC Massive Open Online Course named 'Getting and Cleaning Data' by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD.  The course was taken in May of 2014 via the Internet website of coursera.org at website:

   https://class.coursera.org/getdata-003

## Starting files and assumptions
Data for project was downloaded from course provided Internet file at: 
   
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
       
Unzipped all files and moved every file into just one subdirectory named 'data' on my computer. 
   
This 'data' subdirectory is in my R my working directory and my R script uses .\data\afilename.ext
to get the wanted afilename.ext data files.
   
## R script named run_analysis.R  was used to process the data as follows:
1. Merged training and test data sets (2 variable value files, 2 subject id files, 2 activity type files, 
and one time and frequency domain variable names file) to create one large data set. 
2. Added 561 cleaned up time and frequency domain variable names to this large data set.
3. Added subject id.  
4. Added activity type (converted from number to cleaned up text) to this large data set.
5. Extracted from the large data set only the variable measurements on the mean and standard deviation 
for each one of the 561 variables by selecting all variables names that contained either 'mean' or 'std'
6. Made a second, independent tidy data set with the average of each variable for each activity and each subject
of the above 'mean' & 'std' extracted smaller data set

## Additional Course Project steps:
1. Submitted the tidy data set from '6.' above and named **tidydata.txt** by uploading it to the course website.
2. Submitted my Github repository link:
   https://github.com/andysavidge/Getting-and-Cleaning-Data-Course-Project/
3. My Github.com repository contains the following 3 files for the Course Project:
   README.md (this file)
   run_analysis.R (the R script file)
   codebook.md (the codebook for the **tidydata.txt** uploaded tidy data set output file)

## Submit: 
1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis, and 
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
4. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

## Tidy Data Set has:
1. each measured variable in one column
      - include a row at the top of each file with variable names
      - make variable names human readable i.e. yes- AgeAtDiagnosis vs. NO- AgeDx
2. each different observation of that variable should be in a different row
3. there should be one table for each kind of variable - via twitter, facebook, google+ etc.
      - in general data should be saved in one file per table
4. if you have multiple tables they should include a column in the table that allows them to be linked - often an ID

## Code Book has:
1. info about the variable including units i.e. thousands, millions, etc.
2. info about the summary choices made
   - how you picked which observations to include/exclude, 
3. info about the experimental study design: way collected data, 
4. instruction list (for this class R script w/input raw data & output tidy data)

## PROJECT STEPS:
1. Step 1: "Merges the training and the test sets to create one data set."
Merge the training and the test sets into one data set - with the additional subject id and activity type columns 
(lets name this data set as set1 for the purpose of illustration).

2. Step 2: "Extracts only the measurements on the mean and standard deviation for each measurement."
From set1, extract only the relevant columns (lets name this data set as set2). 

3. Step 3: "Uses descriptive activity names to name the activities in the data set."
<I interpreted this direction as "Rename the activity type numeric code with activity type strings." 
(Please correct me if I misunderstood the direction>
From the set1, replace existing activity type values with descriptive activity names (lets name this data set as set3).

4. Step 4: "Appropriately labels the data set with descriptive activity names." 
<I interpreted this direction as "Rename the column names with descriptive strings" 
(Please correct me if I misunderstood the direction.)>
From the set3, replace column names (let's call it as set4).

5. Step 5: "Creates a second, independent tidy data set with the average of each variable for each activity and each subject."
From the set4, create a new tidy data set for the average values (lets name this data set as set5).
Submit the "set5" with your nomenclature.
Should I submit set2 as well as set5? Any feedback will be greatly appreciated.
