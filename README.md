Getting-and-Cleaning-Data-Course-Project
========================================

20140505 MOOC Coursera project

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
