library(tidyverse)

MC_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MC_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MC_table)) #generate multiple linear regression model

SC_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- SC_table %>% 
summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table

lot_summary <- SC_table %>% group_by(Manufacturing_Lot) %>%
summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table

t.test(SC_table$PSI,mu=1500) #compare sample versus population means

t.test(subset(SC_table, Manufacturing_Lot=="Lot1")$PSI,mu=1500) #compare Lot1 versus population means
t.test(subset(SC_table, Manufacturing_Lot=="Lot2")$PSI,mu=1500) #compare Lot2 versus population means
t.test(subset(SC_table, Manufacturing_Lot=="Lot3")$PSI,mu=1500) #compare Lot3 versus population means
