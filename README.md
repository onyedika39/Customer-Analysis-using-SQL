# Customer Analysis with SQL:
## Overview
This project involves analyzing customer data for a restaurant using SQL. The dataset, stored in a table named restaurant, includes information about customer interactions, visits, and dining preferences. The goal is to use SQL to extract actionable insights about customer behavior, trends, and preferences, which can help improve customer satisfaction and enhance restaurant performance.

## Project Objectives
To analyze customer visit patterns, including frequency and recency.
To examine customer preferences based on menu items, meal types, and spending habits.
To identify key customer segments and provide recommendations for targeted marketing strategies.
## Data
The restaurant table contains the following columns:

Customer_ID: Unique identifier for each customer.
Visit_Date: The date when the customer visited the restaurant.
Menu_Item: The name of the menu item ordered by the customer.
Meal_Type: Type of meal (e.g., breakfast, lunch, dinner).
Amount_Spent: The total amount spent by the customer during the visit.
Customer_Age: The age of the customer.
Customer_Gender: The gender of the customer.
Customer_Loyalty_Status: Indicates if the customer is a loyalty program member (e.g., 'Yes', 'No').
## Technologies Used
SQL for querying and analyzing the dataset.
MySQL or PostgreSQL for database management.
## Key Queries
Here are some key SQL queries used in the project:

1. Total Spending by Customer
   https://github.com/onyedika39/Customer-Analysis-using-SQL/blob/main/Screenshot%202025-03-12%20163534.png
   This query calculates the total amount spent by each customer and ranks them.

2.  Most Popular Menu Item
https://github.com/onyedika39/Customer-Analysis-using-SQL/blob/main/Screenshot%202025-03-12%20163601.png  
This query identifies the most popular menu items based on the number of times they were ordered.

3. Spending by Meal Type
https://github.com/onyedika39/Customer-Analysis-using-SQL/blob/main/Screenshot%202025-03-12%20163626.png
This query tracks the number of customer visits per month, allowing you to identify trends and seasonal patterns.

## Insights and Results
Customer Loyalty: Customers with loyalty status tend to spend more and visit more frequently.
Popular Menu Items: Certain menu items, like 'Pasta Primavera' and 'Grilled Chicken', are significantly more popular than others.
Meal Preferences: Customers tend to spend more during dinner hours than during breakfast or lunch.
Seasonal Trends: The restaurant experiences higher traffic and spending during holiday seasons, particularly December.
## Conclusion
This analysis provides a clear picture of customer behavior and spending patterns at the restaurant. By leveraging SQL, we can effectively query and analyze large datasets to uncover trends and insights that can drive business decisions. The findings can help improve customer retention strategies, menu planning, and marketing efforts.

## Future Work
Conducting deeper analysis of customer feedback and reviews to understand dining satisfaction.
Exploring the impact of promotions and discounts on customer spending and loyalty.
Implementing a predictive model for customer churn using historical data.







