# MechaCar Statistical Analysis
  Analysis of datasets from automotibe industry.
  
## Overview of the analysis
Analyze a series of datasets from the automotive industry. The analysis will include visualizations, statistical tests, and interpretation of the results. All the statistical analysis and visualizations will be written in the R programming language.
The following outputs will be produced:

- Linear Regression to Predict MPG
- Summary Statistics on Suspension Coils
- T-Test on Suspension Coils
- Design a Study Comparing the MechaCar to the Competition
  
## Resources
- Data Source: MechaCar_mpg.csv, Suspension_Coil.csv files
- Software: R, RStudio

## Results
The results are presented below:

## Linear Regression to Predict MPG

![Mechacar_LR](/Mechacar_LR.png)

- According to our results, vehicle vehicle_length and ground_clearance (as well as intercept) are statistically likely to provide non-random amounts of variance to the linear model. In other words the vehicle_length and ground_clearance have a significant impact on mpg.
  
- The p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- The r-squared value is 0.71, which means that roughly 71% of all mpg predictions will be correct when using this linear model.

## Summary Statistics on Suspension Coils

Although looking at all manufactoring lots together, the total variance of the suspension coils meets the design specification (being below 100), given the nature of the risk, a more granular analysis is required.  If we look at the manufactoring lots individually, we can verify that lot 3 doesn't meet the design specification (variance above 100), therefore further action is required, like eliminating the ID's with variance above threshhold and analysis of what is causing so much variance in manufacturing this lot.

- Total Summary

![total_sum](/total_sum.png)  

- Lots Summary

![lot_sum](/lot_sum.png)  

## T-Tests on Suspension Coils

Assuming the significance level is the common 0.05 percent, the p-value across all manufacturing lots is above the significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.  However the p-value is fairly close to the significance level.

When we do the t-test for each manufacturing lot, the p-value for the first lot is 1.00, which means the two means are equivalent. For the second, the p-value lot is still considerebly high, which still shows sufficient evidence to reject the null hypothesis.  However, for the third lot, the p-value is below the significance level, which shows evidence to reject the null hypothesis, as the 2 means are not similar.

- t-Test fot all manufacturing lots

![t_test_all](/t_test_all.png)  

- t-Test fot each manufacturing lot

![t_test_each](/t_test_each.png)   

## Study Design: MechaCar vs Competition

The statistical study that can quantify how the MechaCar performs against the competition is the one-way ANOVA.  A one-way ANOVA is used to test the means of a single dependent variable across a single independent variable with multiple groups.

- The metrics to be tested would be the following:
  - cost
  - city fuel efficiency
  - highway fuel efficiency
  - horse power
  - maintenance cost
  - safety rating
  - warranty period
  - luggage space
  - total speed
  - accelaration
  - breaking range
  
- The statistical hypotheses will be the following:
  - H0 : The means of all groups are equal, or µ1 = µ2 = … = µn.
  - Ha : At least one of the means is different from all other groups.
 
- To run the test, we need data for all metrics, plus vehicle classification, for each manufacturer.

