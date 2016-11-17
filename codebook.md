The experiment/dataset
----------------------

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain. See
'features\_info.txt' for more details.

Variables included
------------------

### Activity Variables

    read.table("activity_labels.txt")

    ##   Value         Definition
    ## 1     1            WALKING
    ## 2     2   WALKING_UPSTAIRS
    ## 3     3 WALKING_DOWNSTAIRS
    ## 4     4            SITTING
    ## 5     5           STANDING
    ## 6     6             LAYING

### Feature variables explained

    read.table("feature_variables.txt")

    ##   abbreviations       descriptions
    ## 1            ^t               time
    ## 2            ^f          frequency
    ## 3           Acc      Accelerometer
    ## 4          Gyro          Gyroscope
    ## 5           Mag          Magnitude
    ## 6      BodyBody               Body
    ## 7          mean               Mean
    ## 8           std Standard Deviation

Units used
----------

The acceleration signal from the smartphone accelerometer was measured
in standard gravity units 'g'.

The angular velocity vector measured by the gyroscope was measured in
radians/second.
