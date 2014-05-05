Getting-and-Cleaning-Data-Course-Project
========================================

20140505 MOOC Coursera project

 submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  
 1) tidy data set has:
    1. each measured variable in one column
      - include a row at the top of each file with variable names
      - make variable names human readable i.e. yes- AgeAtDiagnosis vs. NO- AgeDx
    2. each different observation of that variable should be in a different row
    3. there should be one table for each kind of variable - via twitter, facebook, google+ etc.
      - in general data should be saved in one file per table
    4. if you have multiple tables they should include a column in the table that allows them to be linked - often an ID
 3) a code book has:
    1. info about the variable including units i.e. thousands, millions, etc.
    2. info about the summary choices made
      - how you picked which observations to include/exclude, 
    3. info about the experimental study design: way collected data, 
    4. instruction list (for this class R script w/input raw data & output tidy data)
