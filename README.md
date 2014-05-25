Getting and Cleaning Data
Course Project
========================================

This README.md file is part of the Course Project for the MOOC Massive Open Online Course named 'Getting and Cleaning Data' by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD at Johns Hopkins Bloomberg School of Public Health 
www.jhsph.edu    The course was taken in May of 2014 via the Internet website of coursera.org at website:

   https://class.coursera.org/getdata-003

## Starting files and assumptions
Data for project was downloaded from course provided Internet file at: 
   
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
       
Unzipped all files and moved every file into just one subdirectory named 'data' on my computer (a desktop
PC running Windows 7 with all updates current) that exists in my R working directory. 

My run_analysis.R script assumes all the needed data files will be in a directory named 'data' that is in the current working directory. 
   
This 'data' subdirectory is in my R my working directory and my R script uses ".\data\afilename.ext"
to read the data from the wanted "afilename.ext" data files.
   
## run_analysis.R script processed the starting data as follows:
1. Merged training and test data sets (2 variable value files, 2 subject id files, 2 activity type files, one activity names file, and one time and frequency domain variable names file) to create one large data frame.
2. Added 561 cleaned up time and frequency domain variable names to this large data frame.
3. Added subject ids to this data frame
4. Added activity type (converted from number to cleaned up text) to this large data frame.
5. Extracted from the large data frame only the measurements on the mean and standard deviation 
for each measurement of the 561 variables by selecting all variables names that contained either 'mean' or 'std' (a total of 86 selected 'mean' and 'std' variables)
6. Made a second, independent tidy data set with the means of the 86 variables for each activity variable and each subject variable via processing the above 'mean' & 'std' extracted data set.

## Additional Course Project items:
* Submitted the tidy data set from '6.' above and named **tidydata.txt** by uploading it to the course website.
* Submitted my Github repository link:

   https://github.com/andysavidge/Getting-and-Cleaning-Data-Course-Project/

* My Github.com repository contains the following 3 files for the Course Project:
 1. README.md (this file)
 2. run_analysis.R (the R script file)
 3. codebook.md (the codebook for the **tidydata.txt** uploaded tidy data set output file)

