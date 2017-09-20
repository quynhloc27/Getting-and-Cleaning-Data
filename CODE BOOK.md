# CODE BOOK

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

* 'subject': Each row identifies the subject performing the activity for each sample. Its range is from 1 to 30.

* 'activity': Each row identifies the activity performed by the subject. There are 6 activities in order: Walking, Walking_Upstairs, Walking_Downstairs, Sittings, Standing, Laying

* other variables: mean and standard deviation (std) of measures (time, frequency,acceleration and magnitude) coming from the accelerometer and gyroscope 3-axial (X,Y,Z) raw signals.

### Time:

These time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

### Acceleration:
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time-body-acceleration-XYZ and time-gravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time-body-acceleration-jerk-XYZ and time-body-Gyro-Jerk-XYZ). 

### Magnitude: 
The magnitude of these three-dimensional signals were calculated using the Euclidean norm (time-body-acceleration-magnitude, time-gravity-acceleration-magnitude, time-body-acceleration-jerk-magnitude, time-body-Gyro-magnitude, time-body-gyro-jerk-magnitude). 

### Frequency: 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency-body-acceleration-XYZ, frequency-body-acceleration-Jerk-XYZ, frequency-body-Gyro-XYZ, frequency-body-acceleration-Jerk-magnitude, frequency-body-Gyro-magnitude, frequency-body-Gyro-Jerk-magnitude. (Note the 'f' to indicate frequency domain signals). 

* time-body-acceleration-mean-X
* time-body-acceleration-mean-Y
* time-body-acceleration-mean-Z
* time-body-acceleration-std-X
* time-body-acceleration-std-Y
* time-body-acceleration-std-Z
* time-Gravityacceleration-mean-X
* time-Gravityacceleration-mean-Y
* time-Gravityacceleration-mean-Z
* time-Gravityacceleration-std-X
* time-Gravityacceleration-std-Y
* time-Gravityacceleration-std-Z
* time-body-acceleration-jerk-mean-X
* time-body-acceleration-jerk-mean-Y
* time-body-acceleration-jerk-mean-Z
* time-body-acceleration-jerk-std-X
* time-body-acceleration-jerk-std-Y
* time-body-acceleration-jerk-std-Z
* time-body-gyro-mean-X
* time-body-gyro-mean-Y
* time-body-gyro-mean-Z
* time-body-gyro-std-X
* time-body-gyro-std-Y
* time-body-gyro-std-Z
* time-body-gyro-jerk-mean-X
* time-body-gyro-jerk-mean-Y
* time-body-gyro-jerk-mean-Z
* time-body-gyro-jerk-std-X
* time-body-gyro-jerk-std-Y
* time-body-gyro-jerk-std-Z
* time-body-acceleration-magnitude-mean
* time-body-acceleration-magnitude-std
* time-Gravityacceleration-magnitude-mean
* time-Gravityacceleration-magnitude-std
* time-body-acceleration-jerkmagnitude-mean
* time-body-acceleration-jerkmagnitude-std
* time-body-gyromagnitude-mean
* time-body-gyromagnitude-std
* time-body-gyro-jerkmagnitude-mean
* time-body-gyro-jerkmagnitude-std
* frequency-body-acceleration-mean-X
* frequency-body-acceleration-mean-Y
* frequency-body-acceleration-mean-Z
* frequency-body-acceleration-std-X
* frequency-body-acceleration-std-Y
* frequency-body-acceleration-std-Z
* frequency-body-acceleration-jerk-mean-X
* frequency-body-acceleration-jerk-mean-Y
* frequency-body-acceleration-jerk-mean-Z
* frequency-body-acceleration-jerk-std-X
* frequency-body-acceleration-jerk-std-Y
* frequency-body-acceleration-jerk-std-Z
* frequency-body-gyro-mean-X
* frequency-body-gyro-mean-Y
* frequency-body-gyro-mean-Z
* frequency-body-gyro-std-X
* frequency-body-gyro-std-Y
* frequency-body-gyro-std-Z
* frequency-body-acceleration-magnitude-mean
* frequency-body-acceleration-magnitude-std
* frequency-body-acceleration-jerkmagnitude-mean
* frequency-body-acceleration-jerkmagnitude-std
* frequency-body-gyromagnitude-mean
* frequency-body-gyromagnitude-std
* frequency-body-gyro-jerkmagnitude-mean
* frequency-body-gyro-jerkmagnitude-std
