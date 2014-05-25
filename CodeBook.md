#CodeBook.md for: **tidydata.txt**

## Study Description:
   * The data study was done by Andy Savidge (andysavidge@gmail.com)
   * The study was done for a Getting and Cleaning Data Course PROJECT (via. a Coursera MOOC done in May 2014)
   * The initial data files for the project were given and an R script was written to get and clean these data.
   * The cleaned data was used to produce a smaller tidy data set named **tidydata.txt** that this codebook documents

## Initial data:
   The supplied initial data files all came from data collected from the accelerometers from the Samsung Galaxy S smartphone.
   
   All the original data and downloaded Internet files came from the course provided source website at:
   
     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

   All the data read by the R script for the project came from a course provided zip file at:
   
     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
   
####   All of the initial data used in the R script program came from the following 8 files in the 'zip' file:
   1. activity_labels.txt
   2. features.txt
   3. subject_train.txt
   4. X_train.txt
   5. y_train.txt
   6. subject_test.txt
   7. X_test.txt
   8. y_test.txt
   
####   The output of the R script file is the tidy dataset **tidydata.txt** and was uploaded via the project webpage
   
## **tidydata.txt** info 
   Below are two tables giving info about all the variables in the **tidydata.txt** file.

   Variable names were gotten from the features.txt and activity_labels.txt.   These original variable names were 
   all converted to lowercase [a-z] letters and all non [a-z] characters were removed.  For name clarity the variable    names beginning with t... and f... were changed to time... and freq... since these variables deal with time and
   freq(uency) domains(see original documentation).

   The **tidydata.txt** data consists of the mean value of the 86 num variables with 180 obs. that were split out by 
   1. 'subject' each of 30 'subject' ( 1 thru 30 ) and by
   2. 'activity' each of six 'activity' (laying, sitting, standing, walking, walking.downstairs, walking.upstairs)

   The before getting 'mean' data had 10299 obs of 86 num variables and the two 'subject' and 'activity' variables.
   The tidy data set was written from a 'data frame':	180 obs. of  88 variables:  using the 'write.table()' with no
   additional parameters so the items are in a space delimited text file.



####   The 88 variable units(see table below this line):

| $ variable names                        | type: Units(see original source for number measured units)  |
|-----------------------------------------|-------------------------------------------------------------|
| $ subject                               | chr: is an identifying number for each person (1:30)        |
| $ activity                              | chr: a word for activity: "laying" "sitting" "standing"     |
|                                         | "walking" "walkingupstairs" "walkingdownstairs"             |
|                                         |                                                             |
| $ timebodyaccmeanx                      | num: real number (normalized between 1 and -1)              |
| ...   86 total num variables            | ...: ...                                                    | 
| $ freqbodybodygyrojerkmagstd            | num: see source website given above for measured units etc. | 
   
   
   
####   Variable names of output 'tidydata.txt':	180 obs. of  88 variables(names in table below this line):
   
| $ variable names                       | type of var. and 1st few values ...                  |
|----------------------------------------|------------------------------------------------------|
| $ subject                              | chr  "1" "1" "1" "1" ...                             |
| $ activity                             | chr  "standing" "standing" "standing" "standing" ... |
| $ timebodyaccmeanx                     | num  0.289 0.278 0.28 0.279 0.277 ...                |
| $ timebodyaccmeany                     | num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...     |
| $ timebodyaccmeanz                     | num  -0.133 -0.124 -0.113 -0.123 -0.115 ...          |
| $ timegravityaccmeanx                  | num  0.963 0.967 0.967 0.968 0.968 ...               |
| $ timegravityaccmeany                  | num  -0.141 -0.142 -0.142 -0.144 -0.149 ...          |
| $ timegravityaccmeanz                  | num  0.1154 0.1094 0.1019 0.0999 0.0945 ...          |
| $ timebodyaccjerkmeanx                 | num  0.078 0.074 0.0736 0.0773 0.0734 ...            |
| $ timebodyaccjerkmeany                 | num  0.005 0.00577 0.0031 0.02006 0.01912 ...        |
| $ timebodyaccjerkmeanz                 | num  -0.06783 0.02938 -0.00905 -0.00986 0.01678 ...  |
| $ timebodygyromeanx                    | num  -0.0061 -0.0161 -0.0317 -0.0434 -0.034 ...      |
| $ timebodygyromeany                    | num  -0.0314 -0.0839 -0.1023 -0.0914 -0.0747 ...     |
| $ timebodygyromeanz                    | num  0.1077 0.1006 0.0961 0.0855 0.0774 ...          |
| $ timebodygyrojerkmeanx                | num  -0.0992 -0.1105 -0.1085 -0.0912 -0.0908 ...     |
| $ timebodygyrojerkmeany                | num  -0.0555 -0.0448 -0.0424 -0.0363 -0.0376 ...     |
| $ timebodygyrojerkmeanz                | num  -0.062 -0.0592 -0.0558 -0.0605 -0.0583 ...      |
| $ timebodyaccmagmean                   | num  -0.959 -0.979 -0.984 -0.987 -0.993 ...          |
| $ timegravityaccmagmean                | num  -0.959 -0.979 -0.984 -0.987 -0.993 ...          |
| $ timebodyaccjerkmagmean               | num  -0.993 -0.991 -0.989 -0.993 -0.993 ...          |
| $ timebodygyromagmean                  | num  -0.969 -0.981 -0.976 -0.982 -0.985 ...          |
| $ timebodygyrojerkmagmean              | num  -0.994 -0.995 -0.993 -0.996 -0.996 ...          |
| $ freqbodyaccmeanx                     | num  -0.995 -0.997 -0.994 -0.995 -0.997 ...          |
| $ freqbodyaccmeany                     | num  -0.983 -0.977 -0.973 -0.984 -0.982 ...          |
| $ freqbodyaccmeanz                     | num  -0.939 -0.974 -0.983 -0.991 -0.988 ...          |
| $ freqbodyaccmeanfreqx                 | num  0.252 0.271 0.125 0.029 0.181 ...               |
| $ freqbodyaccmeanfreqy                 | num  0.1318 0.0429 -0.0646 0.0803 0.058 ...          |
| $ freqbodyaccmeanfreqz                 | num  -0.0521 -0.0143 0.0827 0.1857 0.5598 ...        |
| $ freqbodyaccjerkmeanx                 | num  -0.992 -0.995 -0.991 -0.994 -0.996 ...          |
| $ freqbodyaccjerkmeany                 | num  -0.987 -0.981 -0.982 -0.989 -0.989 ...          |
| $ freqbodyaccjerkmeanz                 | num  -0.99 -0.99 -0.988 -0.991 -0.991 ...            |
| $ freqbodyaccjerkmeanfreqx             | num  0.8704 0.6085 0.1154 0.0358 0.2734 ...          |
| $ freqbodyaccjerkmeanfreqy             | num  0.2107 -0.0537 -0.1934 -0.093 0.0791 ...        |
| $ freqbodyaccjerkmeanfreqz             | num  0.2637 0.0631 0.0383 0.1681 0.2924 ...          |
| $ freqbodygyromeanx                    | num  -0.987 -0.977 -0.975 -0.987 -0.982 ...          |
| $ freqbodygyromeany                    | num  -0.982 -0.993 -0.994 -0.994 -0.993 ...          |
| $ freqbodygyromeanz                    | num  -0.99 -0.99 -0.987 -0.987 -0.989 ...            |
| $ freqbodygyromeanfreqx                | num  -0.2575 -0.0482 -0.2167 0.2169 -0.1533 ...      |
| $ freqbodygyromeanfreqy                | num  0.0979 -0.4016 -0.0173 -0.1352 -0.0884 ...      |
| $ freqbodygyromeanfreqz                | num  0.5472 -0.0682 -0.1107 -0.0497 -0.1622 ...      |
| $ freqbodyaccmagmean                   | num  -0.952 -0.981 -0.988 -0.988 -0.994 ...          |
| $ freqbodyaccmagmeanfreq               | num  -0.0884 -0.0441 0.2579 0.0736 0.3943 ...        |
| $ freqbodybodyaccjerkmagmean           | num  -0.994 -0.99 -0.989 -0.993 -0.996 ...           |
| $ freqbodybodyaccjerkmagmeanfreq       | num  0.347 0.532 0.661 0.679 0.559 ...               |
| $ freqbodybodygyromagmean              | num  -0.98 -0.988 -0.989 -0.989 -0.991 ...           |
| $ freqbodybodygyromagmeanfreq          | num  -0.129 -0.272 -0.2127 -0.0357 -0.2736 ...       |
| $ freqbodybodygyrojerkmagmean          | num  -0.992 -0.996 -0.995 -0.995 -0.995 ...          |
| $ freqbodybodygyrojerkmagmeanfreq      | num  -0.0743 0.1581 0.4145 0.4046 0.0878 ...         |
| $ angletimebodyaccmeangravity          | num  -0.1128 0.0535 -0.1186 -0.0368 0.1233 ...       |
| $ angletimebodyaccjerkmeangravitymean  | num  0.0304 -0.00743 0.1779 -0.01289 0.12254 ...     |
| $ angletimebodygyromeangravitymean     | num  -0.465 -0.733 0.101 0.64 0.694 ...              |
| $ angletimebodygyrojerkmeangravitymean | num  -0.0184 0.7035 0.8085 -0.4854 -0.616 ...        |
| $ anglexgravitymean                    | num  -0.841 -0.845 -0.849 -0.849 -0.848 ...          |
| $ angleygravitymean                    | num  0.18 0.18 0.181 0.182 0.185 ...                 |
| $ anglezgravitymean                    | num  -0.0586 -0.0543 -0.0491 -0.0477 -0.0439 ...     |
| $ timebodyaccstdx                      | num  -0.995 -0.998 -0.995 -0.996 -0.998 ...          |
| $ timebodyaccstdy                      | num  -0.983 -0.975 -0.967 -0.983 -0.981 ...          |
| $ timebodyaccstdz                      | num  -0.914 -0.96 -0.979 -0.991 -0.99 ...            |
| $ timegravityaccstdx                   | num  -0.985 -0.997 -1 -0.997 -0.998 ...              |
| $ timegravityaccstdy                   | num  -0.982 -0.989 -0.993 -0.981 -0.988 ...          |
| $ timegravityaccstdz                   | num  -0.878 -0.932 -0.993 -0.978 -0.979 ...          |
| $ timebodyaccjerkstdx                  | num  -0.994 -0.996 -0.991 -0.993 -0.996 ...          |
| $ timebodyaccjerkstdy                  | num  -0.988 -0.981 -0.981 -0.988 -0.988 ...          |
| $ timebodyaccjerkstdz                  | num  -0.994 -0.992 -0.99 -0.993 -0.992 ...           |
| $ timebodygyrostdx                     | num  -0.985 -0.983 -0.976 -0.991 -0.985 ...          |
| $ timebodygyrostdy                     | num  -0.977 -0.989 -0.994 -0.992 -0.992 ...          |
| $ timebodygyrostdz                     | num  -0.992 -0.989 -0.986 -0.988 -0.987 ...          |
| $ timebodygyrojerkstdx                 | num  -0.992 -0.99 -0.988 -0.991 -0.991 ...           |
| $ timebodygyrojerkstdy                 | num  -0.993 -0.997 -0.996 -0.997 -0.996 ...          |
| $ timebodygyrojerkstdz                 | num  -0.992 -0.994 -0.992 -0.993 -0.995 ...          |
| $ timebodyaccmagstd                    | num  -0.951 -0.976 -0.988 -0.986 -0.991 ...          |
| $ timegravityaccmagstd                 | num  -0.951 -0.976 -0.988 -0.986 -0.991 ...          |
| $ timebodyaccjerkmagstd                | num  -0.994 -0.992 -0.99 -0.993 -0.996 ...           |
| $ timebodygyromagstd                   | num  -0.964 -0.984 -0.986 -0.987 -0.989 ...          |
| $ timebodygyrojerkmagstd               | num  -0.991 -0.996 -0.995 -0.995 -0.995 ...          |
| $ freqbodyaccstdx                      | num  -0.995 -0.999 -0.996 -0.996 -0.999 ...          |
| $ freqbodyaccstdy                      | num  -0.983 -0.975 -0.966 -0.983 -0.98 ...           |
| $ freqbodyaccstdz                      | num  -0.906 -0.955 -0.977 -0.99 -0.992 ...           |
| $ freqbodyaccjerkstdx                  | num  -0.996 -0.997 -0.991 -0.991 -0.997 ...          |
| $ freqbodyaccjerkstdy                  | num  -0.991 -0.982 -0.981 -0.987 -0.989 ...          |
| $ freqbodyaccjerkstdz                  | num  -0.997 -0.993 -0.99 -0.994 -0.993 ...           |
| $ freqbodygyrostdx                     | num  -0.985 -0.985 -0.977 -0.993 -0.986 ...          |
| $ freqbodygyrostdy                     | num  -0.974 -0.987 -0.993 -0.992 -0.992 ...          |
| $ freqbodygyrostdz                     | num  -0.994 -0.99 -0.987 -0.989 -0.988 ...           |
| $ freqbodyaccmagstd                    | num  -0.956 -0.976 -0.989 -0.987 -0.99 ...           |
| $ freqbodybodyaccjerkmagstd            | num  -0.994 -0.992 -0.991 -0.992 -0.994 ...          |
| $ freqbodybodygyromagstd               | num  -0.961 -0.983 -0.986 -0.988 -0.989 ...          |
| $ freqbodybodygyrojerkmagstd           | num  -0.991 -0.996 -0.995 -0.995 -0.995 ...          |
