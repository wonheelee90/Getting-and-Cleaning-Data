Objective
---------

The objective is to create an R script called run\_analysis.R that does
the following.

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation
    for each measurement.
3.  Uses descriptive activity names to name the activities in the data
    set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and
    each subject.

Deliverables
------------

1.  The tidy data set described above.
2.  A link to the Github repository with the script performing the
    analysis
3.  A codebook that describes the variables, the data, and any
    transformations or work that you performed to clean up the data
    called CodeBook.md.
4.  A README.md file

The run\_analysis.R code
------------------------

1.  The code assumes that all of the data is present in the current
    working directory, as stated in the submission page of
    the assignment.
2.  The code reads activity, subject, and feature data into R.
3.  The code then merges each of those data, combining the test and
    train results.
4.  It then sets the names of variables to descriptive ones for
    better readibility.
5.  It combines the set of activity, subject, and feature data into one
    for the combined data.
6.  It then subsets the data by identifying only those columns that list
    means or standard deviations.
7.  It then coverts the activity and feature variable labels for
    better readibility.
8.  The code finally outputs the tidy subdata set and writes it into a
    .txt file.
