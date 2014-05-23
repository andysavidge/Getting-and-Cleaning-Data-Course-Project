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
   Below is a table giving info about the all variables gotten by using the R function str() on the cleaned data 
   that was used in writing the output **tidydata.txt** file.

   The **tidydata.txt** data consists of the mean value of the 86 num variables with 180 obs. that were split out by 
   1. 'subject' each of 30 'subject' ( 1 thru 30 ) and by
   2. 'activity' each of six 'activity' (laying, sitting, standing, walking, walking.downstairs, walking.upstairs)

   The before getting 'mean' data had 10299 obs of 86 num variables and the two 'subject' and 'activity' variables

####   The 88 variable units(see table below this line):

| $ variable                              | Units                                                    |
|-----------------------------------------|----------------------------------------------------------|
| $ subject                               | # is an identifying number for each person (1:30)        |
| $ activity                              | word for activity type: "laying" "sitting" "standing"    |
|                                         | "walking" "walking.upstairs" "walking.downstairs"        |
| $ tbody.acc.meanx                       | # is a real number                                       |
| ...   86 total num variables            | " units were all normalized between 1 and -1             | 
| $ fbodybody.gyro.jerk.mag.std           | " see source website given above for measured units etc. | 
   
   
   
####   Variable names of output 'data.frame':	180 obs. of  88 variables(names in table below this line):
   
| $ variable                              | type  actual data ...                                    |
|-----------------------------------------|----------------------------------------------------------|
| $ subject                               | chr  "1" "1" "1" "1" ...                                 |
| $ activity                              | chr  "laying" "sitting" "standing" "walking" ...         |
| $ tbody.acc.meanx                       | num  0.222 0.261 0.279 0.277 0.289 ...                   |
| $ tbody.acc.meany                       | num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...    |
| $ tbody.acc.meanz                       | num  -0.113 -0.105 -0.111 -0.111 -0.108 ...              |
| $ tgravity.acc.meanx                    | num  -0.249 0.832 0.943 0.935 0.932 ...                  |
| $ tgravity.acc.meany                    | num  0.706 0.204 -0.273 -0.282 -0.267 ...                |
| $ tgravity.acc.meanz                    | num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...             |
| $ tbody.acc.jerk.meanx                  | num  0.0811 0.0775 0.0754 0.074 0.0542 ...               |
| $ tbody.acc.jerk.meany                  | num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...    |
| $ tbody.acc.jerk.meanz                  | num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...     |
| $ tbody.gyro.meanx                      | num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...          |
| $ tbody.gyro.meany                      | num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...         |
| $ tbody.gyro.meanz                      | num  0.1487 0.0629 0.0748 0.0849 0.0901 ...              |
| $ tbody.gyro.jerk.meanx                 | num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...            |
| $ tbody.gyro.jerk.meany                 | num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...          |
| $ tbody.gyro.jerk.meanz                 | num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...           |
| $ tbody.acc.magmean                     | num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...           |
| $ tgravity.acc.magmean                  | num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...           |
| $ tbody.acc.jerk.magmean                | num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...         |
| $ tbody.gyro.magmean                    | num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...          |
| $ tbody.gyro.jerk.magmean               | num  -0.963 -0.992 -0.995 -0.299 -0.295 ...              |
| $ fbody.acc.meanx                       | num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...          |
| $ fbody.acc.meany                       | num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...      |
| $ fbody.acc.meanz                       | num  -0.883 -0.959 -0.985 -0.332 -0.226 ...              |
| $ fbody.acc.meanfreqx                   | num  -0.1588 -0.0495 0.0865 -0.2075 -0.3074 ...          |
| $ fbody.acc.meanfreqy                   | num  0.0975 0.0759 0.1175 0.1131 0.0632 ...              |
| $ fbody.acc.meanfreqz                   | num  0.0894 0.2388 0.2449 0.0497 0.2943 ...              |
| $ fbody.acc.jerk.meanx                  | num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...         |
| $ fbody.acc.jerk.meany                  | num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...         |
| $ fbody.acc.jerk.meanz                  | num  -0.948 -0.986 -0.991 -0.469 -0.288 ...              |
| $ fbody.acc.jerk.meanfreqx              | num  0.132 0.257 0.314 -0.209 -0.253 ...                 |
| $ fbody.acc.jerk.meanfreqy              | num  0.0245 0.0475 0.0392 -0.3862 -0.3376 ...            |
| $ fbody.acc.jerk.meanfreqz              | num  0.02439 0.09239 0.13858 -0.18553 0.00937 ...        |
| $ fbody.gyro.meanx                      | num  -0.85 -0.976 -0.986 -0.339 -0.352 ...               |
| $ fbody.gyro.meany                      | num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...          |
| $ fbody.gyro.meanz                      | num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...         |
| $ fbody.gyro.meanfreqx                  | num  -0.00355 0.18915 -0.12029 0.01478 -0.10045 ...      |
| $ fbody.gyro.meanfreqy                  | num  -0.0915 0.0631 -0.0447 -0.0658 0.0826 ...           |
| $ fbody.gyro.meanfreqz                  | num  0.010458 -0.029784 0.100608 0.000773 -0.075676 ...  |
| $ fbody.acc.magmean                     | num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...          |
| $ fbody.acc.magmeanfreq                 | num  0.0864 0.2367 0.2846 0.1906 0.1192 ...              |
| $ fbodybody.acc.jerk.magmean            | num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...          |
| $ fbodybody.acc.jerk.magmeanfreq        | num  0.2664 0.3519 0.4222 0.0938 0.0765 ...              |
| $ fbodybody.gyro.magmean                | num  -0.862 -0.958 -0.985 -0.199 -0.186 ...              |
| $ fbodybody.gyro.magmeanfreq            | num  -0.139775 -0.000262 -0.028606 0.268844 0.349614 ... |
| $ fbodybody.gyro.jerk.magmean           | num  -0.942 -0.99 -0.995 -0.319 -0.282 ...               |
| $ fbodybody.gyro.jerk.magmeanfreq       | num  0.176 0.185 0.334 0.191 0.19 ...                    |
| $ angletbody.acc.meangravity            | num  0.021366 0.027442 -0.000222 0.060454 -0.002695 ...  |
| $ angletbody.acc.jerk.meangravity.mean  | num  0.00306 0.02971 0.02196 -0.00793 0.08993 ...        |
| $ angletbody.gyro.meangravity.mean      | num  -0.00167 0.0677 -0.03379 0.01306 0.06334 ...        |
| $ angletbody.gyro.jerk.meangravity.mean | num  0.0844 -0.0649 -0.0279 -0.0187 -0.04 ...            |
| $ angle.x.gravity.mean                  | num  0.427 -0.591 -0.743 -0.729 -0.744 ...               |
| $ angle.y.gravity.mean                  | num  -0.5203 -0.0605 0.2702 0.277 0.2672 ...             |
| $ angle.z.gravity.mean                  | num  -0.3524 -0.218 0.0123 0.0689 0.065 ...              |
| $ tbody.acc.stdx                        | num  -0.928 -0.977 -0.996 -0.284 0.03 ...                |
| $ tbody.acc.stdy                        | num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...          |
| $ tbody.acc.stdz                        | num  -0.826 -0.94 -0.98 -0.26 -0.23 ...                  |
| $ tgravity.acc.stdx                     | num  -0.897 -0.968 -0.994 -0.977 -0.951 ...              |
| $ tgravity.acc.stdy                     | num  -0.908 -0.936 -0.981 -0.971 -0.937 ...              |
| $ tgravity.acc.stdz                     | num  -0.852 -0.949 -0.976 -0.948 -0.896 ...              |
| $ tbody.acc.jerk.stdx                   | num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...         |
| $ tbody.acc.jerk.stdy                   | num  -0.924 -0.981 -0.986 0.067 -0.102 ...               |
| $ tbody.acc.jerk.stdz                   | num  -0.955 -0.988 -0.992 -0.503 -0.346 ...              |
| $ tbody.gyro.stdx                       | num  -0.874 -0.977 -0.987 -0.474 -0.458 ...              |
| $ tbody.gyro.stdy                       | num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...         |
| $ tbody.gyro.stdz                       | num  -0.908 -0.941 -0.981 -0.344 -0.125 ...              |
| $ tbody.gyro.jerk.stdx                  | num  -0.919 -0.992 -0.993 -0.207 -0.487 ...              |
| $ tbody.gyro.jerk.stdy                  | num  -0.968 -0.99 -0.995 -0.304 -0.239 ...               |
| $ tbody.gyro.jerk.stdz                  | num  -0.958 -0.988 -0.992 -0.404 -0.269 ...              |
| $ tbody.acc.mag.std                     | num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...          |
| $ tgravity.acc.mag.std                  | num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...          |
| $ tbody.acc.jerk.mag.std                | num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...         |
| $ tbody.gyro.mag.std                    | num  -0.819 -0.935 -0.979 -0.187 -0.226 ...              |
| $ tbody.gyro.jerk.mag.std               | num  -0.936 -0.988 -0.995 -0.325 -0.307 ...              |
| $ fbody.acc.stdx                        | num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...           |
| $ fbody.acc.stdy                        | num  -0.834 -0.917 -0.972 0.056 -0.113 ...               |
| $ fbody.acc.stdz                        | num  -0.813 -0.934 -0.978 -0.28 -0.298 ...               |
| $ fbody.acc.jerk.stdx                   | num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...         |
| $ fbody.acc.jerk.stdy                   | num  -0.932 -0.983 -0.987 0.107 -0.135 ...               |
| $ fbody.acc.jerk.stdz                   | num  -0.961 -0.988 -0.992 -0.535 -0.402 ...              |
| $ fbody.gyro.stdx                       | num  -0.882 -0.978 -0.987 -0.517 -0.495 ...              |
| $ fbody.gyro.stdy                       | num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...         |
| $ fbody.gyro.stdz                       | num  -0.917 -0.944 -0.982 -0.437 -0.238 ...              |
| $ fbody.acc.mag.std                     | num  -0.798 -0.928 -0.982 -0.398 -0.187 ...              |
| $ fbodybody.acc.jerk.mag.std            | num  -0.922 -0.982 -0.993 -0.103 -0.104 ...              |
| $ fbodybody.gyro.mag.std                | num  -0.824 -0.932 -0.978 -0.321 -0.398 ...              |
| $ fbodybody.gyro.jerk.mag.std           | num  -0.933 -0.987 -0.995 -0.382 -0.392 ...              | 

