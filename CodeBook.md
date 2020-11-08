### CodeBook

## Coursera Getting and Cleaning Data Course Project
### Introduction
This project is derived from the Human Activity Recognition Using Smartphones Dataset, available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data comes from experiments that were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the researchers captured a number of acceleration and velocity measurements.

According to Coursera instructions, this data was recomposed using R into a new summary dataset. The R script that achieves this re-composition is called run_analysis.R. The summary dataset produced by the script is called TidyDataSet.txt. Both files can be found in this repo.

The TidyDataSet file has 81 columns, including 2 columns of identifier data and 79 columns of feature data. It has 1 header row for variable labels and 180 rows that represent every possible subject-activity pair (30*6=180). The values in the file are the means for all data collected for each feature variable for each subject-activity pair.

### Identifier Variables (columns 1-2)
[1] "Subject Number": integers 1-30 identifying the persons being experimented upon.

[2] "Activities": six activities of the subjects are recorded, each corresponding to an activityId 1-6 in the following order: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

### Feature Variables (columns 3-81)
The source dataset cited above has 561 feature variables. TidyDataSet keeps only those 79 features variables that included some version of 'mean' or 'std' in their labels.

***Features (all measurements were normalized from -1 to 1)***
                                                 
 [3] "timeBodyAccelerator Mean-X"                                  
 [4] "timeBodyAccelerator Mean-Y"                                  
 [5] "timeBodyAccelerator Mean-Z"                                  
 [6] "timeBodyAccelerator Standard Deviation-X"                    
 [7] "timeBodyAccelerator Standard Deviation-Y"                    
 [8] "timeBodyAccelerator Standard Deviation-Z"                    
 [9] "timeGravityAccelerator Mean-X"                               
[10] "timeGravityAccelerator Mean-Y"                               
[11] "timeGravityAccelerator Mean-Z"                               
[12] "timeGravityAccelerator Standard Deviation-X"                 
[13] "timeGravityAccelerator Standard Deviation-Y"                 
[14] "timeGravityAccelerator Standard Deviation-Z"                 
[15] "timeBodyAcceleratorJerk Mean-X"                              
[16] "timeBodyAcceleratorJerk Mean-Y"                              
[17] "timeBodyAcceleratorJerk Mean-Z"                              
[18] "timeBodyAcceleratorJerk Standard Deviation-X"                
[19] "timeBodyAcceleratorJerk Standard Deviation-Y"                
[20] "timeBodyAcceleratorJerk Standard Deviation-Z"                
[21] "timeBodyGyroscope Mean-X"                                    
[22] "timeBodyGyroscope Mean-Y"                                    
[23] "timeBodyGyroscope Mean-Z"                                    
[24] "timeBodyGyroscope Standard Deviation-X"                      
[25] "timeBodyGyroscope Standard Deviation-Y"                      
[26] "timeBodyGyroscope Standard Deviation-Z"                      
[27] "timeBodyGyroscopeJerk Mean-X"                                
[28] "timeBodyGyroscopeJerk Mean-Y"                                
[29] "timeBodyGyroscopeJerk Mean-Z"                                
[30] "timeBodyGyroscopeJerk Standard Deviation-X"                  
[31] "timeBodyGyroscopeJerk Standard Deviation-Y"                  
[32] "timeBodyGyroscopeJerk Standard Deviation-Z"                  
[33] "timeBodyAcceleratorMagnitude Mean"                           
[34] "timeBodyAcceleratorMagnitude Standard Deviation"             
[35] "timeGravityAcceleratorMagnitude Mean"                        
[36] "timeGravityAcceleratorMagnitude Standard Deviation"          
[37] "timeBodyAcceleratorJerkMagnitude Mean"                       
[38] "timeBodyAcceleratorJerkMagnitude Standard Deviation"         
[39] "timeBodyGyroscopeMagnitude Mean"                             
[40] "timeBodyGyroscopeMagnitude Standard Deviation"               
[41] "timeBodyGyroscopeJerkMagnitude Mean"                         
[42] "timeBodyGyroscopeJerkMagnitude Standard Deviation"           
[43] "frequencyBodyAccelerator Mean-X"                             
[44] "frequencyBodyAccelerator Mean-Y"                             
[45] "frequencyBodyAccelerator Mean-Z"                             
[46] "frequencyBodyAccelerator Standard Deviation-X"               
[47] "frequencyBodyAccelerator Standard Deviation-Y"               
[48] "frequencyBodyAccelerator Standard Deviation-Z"               
[49] "frequencyBodyAccelerator MeanFreq-X"                         
[50] "frequencyBodyAccelerator MeanFreq-Y"                         
[51] "frequencyBodyAccelerator MeanFreq-Z"                         
[52] "frequencyBodyAcceleratorJerk Mean-X"                         
[53] "frequencyBodyAcceleratorJerk Mean-Y"                         
[54] "frequencyBodyAcceleratorJerk Mean-Z"                         
[55] "frequencyBodyAcceleratorJerk Standard Deviation-X"           
[56] "frequencyBodyAcceleratorJerk Standard Deviation-Y"           
[57] "frequencyBodyAcceleratorJerk Standard Deviation-Z"           
[58] "frequencyBodyAcceleratorJerk MeanFreq-X"                     
[59] "frequencyBodyAcceleratorJerk MeanFreq-Y"                     
[60] "frequencyBodyAcceleratorJerk MeanFreq-Z"                     
[61] "frequencyBodyGyroscope Mean-X"                               
[62] "frequencyBodyGyroscope Mean-Y"                               
[63] "frequencyBodyGyroscope Mean-Z"                               
[64] "frequencyBodyGyroscope Standard Deviation-X"                 
[65] "frequencyBodyGyroscope Standard Deviation-Y"                 
[66] "frequencyBodyGyroscope Standard Deviation-Z"                 
[67] "frequencyBodyGyroscope MeanFreq-X"                           
[68] "frequencyBodyGyroscope MeanFreq-Y"                           
[69] "frequencyBodyGyroscope MeanFreq-Z"                           
[70] "frequencyBodyAcceleratorMagnitude Mean"                      
[71] "frequencyBodyAcceleratorMagnitude Standard Deviation"        
[72] "frequencyBodyAcceleratorMagnitude MeanFreq"                  
[73] "frequencyBodyBodyAcceleratorJerkMagnitude Mean"              
[74] "frequencyBodyBodyAcceleratorJerkMagnitude Standard Deviation"
[75] "frequencyBodyBodyAcceleratorJerkMagnitude MeanFreq"          
[76] "frequencyBodyBodyGyroscopeMagnitude Mean"                    
[77] "frequencyBodyBodyGyroscopeMagnitude Standard Deviation"      
[78] "frequencyBodyBodyGyroscopeMagnitude MeanFreq"                
[79] "frequencyBodyBodyGyroscopeJerkMagnitude Mean"                
[80] "frequencyBodyBodyGyroscopeJerkMagnitude Standard Deviation"  
[81] "frequencyBodyBodyGyroscopeJerkMagnitude MeanFreq"
