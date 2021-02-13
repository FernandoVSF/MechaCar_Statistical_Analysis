# MechaCar Statistical Analysis
  Analysis of Bike Sharing data in NYC.
  
## Overview of the analysis
Present a business proposal for a bike-sharing company showing bike trip analysis in NYC.
The following outputs will be produced:

- Change Trip Duration to a Datetime Format
- Create Visualizations for the Trip Analysis
- Create a Story and Report for the Final Presentation
  
## Resources
- Data Source: 201908-citibike-tripdata CSV file
- Software: Tableau, Python, Jupyter Notebook

## Results
NYC Story is presented in two dashboards, one showing analysis of trip duration, and the other showing analysis of pick hours/days for bike utilization in NYC.

### Duration Dashboard
![Duration](/Duration.png)

The Duration Dashboard brings the following results:

  - Checkout Times for Users:  This chart shows that the length of time that bikes are checked out for all riders occurs more frequently in 5 hours, with a rapid increase starting in 1 hours, and slow decrease after 5 hours.

  - Checkout Times by Gender:  This chart shows that males are a big majority of the users.  What differs within genders is the fact that after the inflexion point in 5y, average duration decreases more rapdily than other genders.

  - Average Trip Duration: This chart shows that younger users tend to have longer trips, probably explained by having greater resistance and more younger people using bikes as transport.  The data shows users in August 2019 born before 1890, which requires further analysis in data quality.

### Pick Hours Dashboard
![PickHours](/PickHours.png)
   
The Pick Hours Dashboard brings the following results:
 
  - Trips by Weekday per Hour: This chart shows that most of the trips occur around 5-6pm, when people leaves work, and then at 8am, when people head to their workplace.

  - Trips by Gender (Weekday per Hour):  This chart shows that while male and female show similar patterns in time (being male appearing more frequently given most of the users are male), there is no clear patter for unknown gender on businessdays, and more usage during daytime.

  - August Peak Hours: This chart brings another view of the pick hours, showing the same results than the first chart but with a more numeric represenation, and not breaking per weekday. Again, pick hours occor between 5-6pm, sand then at 8am.

  - User Trips by Gender by Weekday:  This chart shows that while subscribers use bike sharing mostly during business weekday, being Thursday the pick day, non-subscribers use mostly during weekends.  Also there are more unknown gender in custumers than subscribers, probably for loser registration requirements.
 
## Summary

Although data was obtained from NYC users, since the analyses were produved using generic information and not city specific, we believe they are very good proxy on how it would behave in any other US location.  Key results were a higher usage of male and younger population, and pick hours at time people go from and to work during business days and more driven to daylight on weekends.  It also shows that most of people who use it for work subscribes to the service, and there's not much registration requirements for regular customers.

Note:  Data on tripduration was represented in "minutes" to match the module, although it would have made more sence being represented in "seconds"

We suggest the following additional visualizations for future analysis:

  - User age trend by gender
  
  - Duration time per type of user  
  
## Link to Dashboard
  
[Link to NYC Story](https://public.tableau.com/profile/fernando.santos8046#!/vizhome/challenge_16126440284230/NYCStory?publish=yes "Link to NYC Story")

## Linear Regression to Predict MPG

![Mechacar_LR](/Mechacar_LR.png)

- According to our results, vehicle vehicle_length and ground_clearance (as well as intercept) are statistically likely to provide non-random amounts of variance to the linear model. In other words the vehicle_length and ground_clearance have a significant impact on mpg.
  
- The p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- The r-squared value is 0.71, which means that roughly 71% of all mpg predictions will be correct when using this linear model.

## Summary Statistics on Suspension Coils

Although looking at all manufactoring lots together, the total variance of the suspension coils meets the design specification, given the nature of the risk, a more granular analysis is required.  If we look at the manufactoring lots individually, we can verify that lot 3 doesn't meet the design specification, therefore further action is required, like eliminating the ID's with variance above threshhold and anlysis of what is causing so much variance in manufacturing this lot.

- Total Summary
![total_sum](/total_sum.png)  

- Lots Summary
![lot_sum](/lot_sum.png)  


