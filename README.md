# Getting-and-Cleaning-Data

How the script work:
1- Download and unzip the original data
2- Import the train and test data under the corresponding directory in R. 
3- Combine the x, y and sub of each data by column.
4- Merge the combined train and test data by row. This is our data set.
5- Import the set of attributes given in the file features.txt in R.
6- Select the desired features (mean or std) from the set of attributes & remove meanFreq from the selection.
7- Return a subset of the columns corresponding to the features selected. 
8- Import the descriptive activity given in the file activity_label.txt in R.
9- Associate descriptive activity names to the activities in the set. 
10- Make the data more user-friendly by eliminating as many abbreviations as possible while adjusting for the spacing and eliminating the upper case.
11- Create a second, independent tidy set with the average of each variable for each activity and each subject using package reshape2.
12- Write the data in txt form. 

Code book: 

Variables

'subject': Each row identifies the subject performing the activity for each sample. Its range is from 1 to 30.
'activity': Each row identifies the activity performed by the subject. There are 6 activities in order: Walking, Walking_Upstairs, Walking_Downstairs, Sittings, Standing, Laying
other variables: mean and standard deviation of measures coming from the accelerometer and gyroscope 3-axial raw signals.

