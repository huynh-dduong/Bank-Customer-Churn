# Project Background
The European bank has many branches located in Germany, France, and Spain. The bank wants to understand their customer churn rate and how to solve this growing issue.

The company has immense amount of data on customer's age, tenure, location, number of products, and more that are underutilized. This project will create and analyze data to provide insights that will target demographics most willing to leave and improve the churn rate.

Insights and recommendations provided on following key areas:
- **Demographic Comparisons**: An analysis of a customer's age, region, balance, salary, and credit score.
- **Account Age**: An assessment of how long a customer is with the bank.
- **Satisfaction Sentiment**: An evaulation of customer complaints and satisfaction ratings after complaint resolution.
- **Product Trend Analysis**: An evaluation of patterns between the number of products a customer has from the bank, the card type a customer has, if the customer is an active member, or has a credit card with the bank.

An interactive Tableau dashboard can be downloaded [here](scripts_visualizations\churn_visualizations.twb)

SQL queries regarding answering business questions can be found [here](scripts_visualizations\churn_business_problem.sql)

The Python Pandas script regarding general cleaning and quality checks can be found [here](scripts_visualizations\Bank_Churn.ipynb)

# Data Structure & Initial Checks
The bank's database structure only consisted of one table with a total row acount of 10,000 records

![Data Structures Table](images\table.png)

The Python Pandas script regarding general cleaning and quality checks can be found [here](scripts_visualizations\Bank_Churn.ipynb)

# Executive Summary
The findings show that Germany has a 32% churn rate that is nearly the combined churn rate total of the other locations. Demographics further show that females are 52% more likely to leave the bank compared to men. And that customers aged 50 were most likely to leave at 57%.

The first, second, and ninth years showed the highest churn rates at 22%. There was a increase trend with churn rates after 2 products from the bank, a 75% increase between 2 and 3. Platnium and Diamond have the highest churn rate of 20 and 21% respectively. And there suggests a correlation of churn rates between active members of a bank, and if the customer has complained or has a credit card.

An interactive Tableau dashboard can be downloaded [here](scripts_visualizations\churn_visualizations.twb)

![Tableau Dashboard of Project](images\dashboard.png)

### <ins>Demographic Comparisons</ins>
- Churn rates peaked at males German customers at 55 yeras old with a 71% churn rate. This is surprising as generally older customers are less likely to leave the bank compared to younger customers.
- Similarly, female German customers ages 50-55 yielded the highest churn rate of 73%. Holding the same sentiments as the last point.
- On average, Spain's customers scored the lowest churn rates out of the other locations at 19% which is attributed to it having the lowest density of customers.
- France on the other hand, has virtually the same amount of customers as Germany. But has a churn rate of 24%, notably lower than Germanys 34% churn rate. This might suggest a better bank quality with customers or a better distributions of banks per customer to provide a fuller service.

![Demographic Comparisons Sheet](images\churn_demographic.png)

### <ins>Account Age</ins>
- The zero, first, and ninth years partnered with the bank marked the highest churn rates with 23% and 22% respectively. 
- Churn rates declined on a year-over-year basis until the customer reached 7 years with the bank which the churn rate was 17%. Rates did increase for the remaining data of years.
- Over the 10 years with the bank, there is an slight downward trend from 23% at the beginning to 21% at the 10 year mark. This does indicate that the longer a customer stays with the bank, the less likely a customer will leave.

![Account Age Sheet](images\churn_tenure.png)

### <ins>Satisfaction Sentiment</ins>
- Churn rates were the lowest with satisfaction scores of 3/5. But also, the number of complaints was at the highest for this satisfaction score with 2,042 instances.
- Generally, churn rates decrease as the satisfaction score increases. However, the number of complaints relatively remains the same with the increasing satisfaction score. Drawing little correlations for churn rates between satisfaction scores and number of complaints.

![Complaint and Satisfaction Sheet](images\churn_complaint_satisfaction.png)

### <ins>Product Trends</ins>

![alt-text-1](images\activemember_complaints_comparison.png) ![alt-text-2](images\activemember_creditcard_comparison.png)