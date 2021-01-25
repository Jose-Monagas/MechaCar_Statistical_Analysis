
library(dplyr)

MechaCar_table <- read.csv(file ="MechaCar_mpg.csv", check.names =F, stringsAsFactors = F)

# Create Linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_table)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_table))

Suspension_Coil_table <- read.csv(file ="Suspension_Coil.csv", check.names =F, stringsAsFactors = F)

total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI, y=NULL, na.rm = FALSE), SD=sd(PSI), .groups = 'keep')

total_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI, y=NULL), SD=sd(PSI), .groups = 'keep')

t.test(Suspension_Coil_table$PSI, mu=1500)

t.test(subset(Suspension_Coil_table, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil_table, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil_table, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)

