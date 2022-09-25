## Deliverable 1 ##
# load package
library(dplyr)
# Import and read csv file.
mecha_mpg <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)
# Linear Regression Model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)
# Summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))

## Deliverable 2 ##
# Import and read csv file.
suspension_coil <- read.csv(file='Resources/Suspension_coil.csv',check.names = F, stringsAsFactors = F)
# Total summary with summarize().
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), stDev = sd(PSI), .groups = 'keep')
# lot_summary dataframe using group_by().
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), stDev = sd(PSI), .groups = 'keep')

## Deliverable 3 ## 
# t-test
t.test(suspension_coil$PSI,mu=mean(suspension_coil$PSI))
# t-test for lot-1
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot1"), mu=mean(suspension_coil$PSI))
# t-test for lot-2
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot2"), mu=mean(suspension_coil$PSI))
# t-test for lot-3
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot3"), mu=mean(suspension_coil$PSI))
