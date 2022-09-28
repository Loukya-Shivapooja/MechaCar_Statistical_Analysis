# MechaCar_Statistical_Analysis
## Project Overview
The goal of the project is to analyze metrics that can affect manufacturing a new car prototype and compare vehicle performance across different manufacturer lots. These metrics include vehicle length, weight, spoiler angle, ground clearance, AWD capabilities, MPG, and PSI.
### Resources
* Data Source: MechaCar_mpg.csv and Suspension_Coil.csv.
* Data Tools: tidyverse, dplyr, ggplot2 and MechaCarChallenge.RScript.
* Software: RStudio and R
## Results
### Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.

<img width="558" alt="Screen Shot 2022-09-24 at 8 46 30 PM" src="https://user-images.githubusercontent.com/107584361/192690134-7b7102f8-3c8e-4ec5-a6ef-ca9ca0245b74.png">

* The most significant variables in our dataset which show a non-random effect on the MPG of the MechaCar are the Vehicle Length and the Ground Clearance. A linear regression model run on these variables against figures for MPG, resulted in p-values of 2.6x10-12 and 5.21x10-8, respectively as indicated with red arrow.
* The slope of the linear model can not be considered to be zero, as the p-value of 5.35x10-11, as indicated with yellow arrow is lower than even an extreme level of significance, and thus the null hypothesis must be rejected. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.
* Although there are still unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness. The r-squared value of 0.7149, highlighted in the green box, indicates that the model is 71% accurate... though it could probably do better.
### Summary Statistics on Suspension Coils
#### Manufacturing Lot Summary
Below is the summary statistics of all of the manufacturing lots. The mean is 1498.78 for this sample and the median was determined to be 1500.
<img width="349" alt="Screen Shot 2022-09-24 at 10 04 31 PM" src="https://user-images.githubusercontent.com/107584361/192691322-39725ce6-d97e-4b16-9c52-147184717a07.png">
#### Summary by Manufacturing Lot Number
The means of the lot numbers are similar to the population mean and the sample mean.
<img width="496" alt="Screen Shot 2022-09-24 at 10 05 13 PM" src="https://user-images.githubusercontent.com/107584361/192691347-d2ba71e3-c2f3-42d3-bebb-555595cb6929.png">
The overall variance for the entire dataset indicates that the current manufacturing data meets the 100 pounds per square inch variance limitation. However, when separated into three lots, the Lot 3 demonstrates a much higher variance. As shown in the Lot Summary stats, the variance for Lot 3 is well over the acceptable threshold, at 170.28.
### T-Tests on Suspension Coils
#### Suspension Coils Cumulative T-test
<img width="433" alt="Screen Shot 2022-09-27 at 10 24 24 PM" src="https://user-images.githubusercontent.com/107584361/192695155-b0230752-bc01-42a1-89e9-9efce631a366.png">
The results of the T-test for the suspension coils across all manufacturing lots shows that they are not statistically different from the population mean, and the p-value is not low enough (0.0603) for us to reject the null hypothesis.

#### Suspension Coils T-test Lot 1
<img width="561" alt="Screen Shot 2022-09-27 at 10 25 20 PM" src="https://user-images.githubusercontent.com/107584361/192695292-240f05ea-8e65-408f-baf0-2f43f0a504ac.png">

The results of the T-test for the suspension coils for Lot 1 shows that they are not statistically different from the population mean, and the p-value is not low enough (1) for us to reject the null hypothesis.

#### Suspension Coils T-test Lot 2
<img width="564" alt="Screen Shot 2022-09-27 at 10 25 31 PM" src="https://user-images.githubusercontent.com/107584361/192695583-a163d695-0318-43fb-98d5-d39524106f91.png">

The results of the T-test for the suspension coils for Lot 2 shows that they are not statistically different from the population mean, and the p-value is not low enough (0.6072) for us to reject the null hypothesis.

#### Suspension Coils T-test Lot 3
<img width="558" alt="Screen Shot 2022-09-27 at 10 25 47 PM" src="https://user-images.githubusercontent.com/107584361/192696003-61ebe9ee-771e-4707-a02e-ecfb492499e2.png">

The results of the T-test for the suspension coils for Lot 3 shows that they are slightly statistically different from the population mean, and the p-value is just low enough (0.0417) for us to reject the null hypothesis. This lot may be need to be discarded, or at least more closely evaluated.

## Study Design: MechaCar vs Competition
When comparing MechaCar to its competitor’s other metrics that could be of interest to a consumer could include cost, car color, fuel efficiency, horsepower, maintenance cost, or safety rating.
#### Metrics to test
The next metrics to test should be the safety rating, horsepower, and highway fuel efficiency, which address some safety concerns of consumers.
#### Null and Alternate Hypothesis
H0: The MechaCar does indeed vary significantly in these variables compared to the competition.
H1: The MechaCar doesn't  vary significantly in these variables compared to the competition.
#### Statistical Test Used
Multiple linear regression would be used to determine the factors that have the highest correlation/predictability with the list selling price andsafty rating and performance of vechiles.
#### Data to run Statistical test
In order to run these statistical tests, we would need the cost, fuel efficiency, horsepower, safety rating, and carbon waste output data from the MechaCar as well as the MechaCar's competitors.
