Getting and Cleaning Data
Course Project
========================================

This README.md file is part of the Course Project for the MOOC Massive Open Online Course named 'Getting and Cleaning Data' by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD at Johns Hopkins Bloomberg School of Public Health 
www.jhsph.edu    The course was taken in May of 2014 via the Internet website of coursera.org at website:

   https://class.coursera.org/getdata-003

## Starting files and assumptions
Data for project was downloaded from course provided Internet file at: 
   
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
       
Unzipped all files and moved every file into just one subdirectory named 'data' on my computer. 
   
This 'data' subdirectory is in my R my working directory and my R script uses ".\data\afilename.ext"
to get the wanted "afilename.ext" data files.
   
## run_analysis.R script processed the starting data as follows:
1. Merged training and test data sets (2 variable value files, 2 subject id files, 2 activity type files, one activity names file, and one time and frequency domain variable names file) to create one large data set. 
2. Added 561 cleaned up time and frequency domain variable names to this large data set.
3. Added subject id.  
4. Added activity type (converted from number to cleaned up text) to this large data set.
5. Extracted from the large data set only the variable measurements on the mean and standard deviation 
for each one of the 561 variables by selecting all variables names that contained either 'mean' or 'std' (a total of
86 selected variables)
6. Made a second, independent tidy data set with the means of the 86 variables for each activity variable and each subject variable via processing the above 'mean' & 'std' extracted data set.

## Additional Course Project items:
* Submitted the tidy data set from '6.' above and named **tidydata.txt** by uploading it to the course website.
* Submitted my Github repository link:

   https://github.com/andysavidge/Getting-and-Cleaning-Data-Course-Project/

* My Github.com repository contains the following 3 files for the Course Project:
 1. README.md (this file)
 2. run_analysis.R (the R script file)
 3. codebook.md (the codebook for the **tidydata.txt** uploaded tidy data set output file)

