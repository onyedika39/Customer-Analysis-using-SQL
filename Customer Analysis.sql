select * from restaurant;
-- Retrieve only the Item Name, Category, and Price.
select Item Name, Category, Price from restaurant;

-- Select all items where the Price is greater than 20.
select * from restaurant where price > 20;


-- Retrieve all items that belong to the "Main Course" category. 
SELECT * FROM restaurant
WHERE Category = 'Main Courses';

-- Retrieve items from the "Soups" sub-category
SELECT * FROM restaurant WHERE `Sub Category` = 'Soups';

-- Find all items where the Price is exactly 15
SELECT * FROM restaurant WHERE Price = 15;

-- Find all items where the Cost is less than 10
SELECT * FROM restaurant WHERE Cost < 10; 

 -- 3. Logical Functions (AND, OR, NOT)
-- Retrieve all items that are in the "Appetizers" category and have a Price greater than 10
SELECT * FROM restaurant WHERE Category = 'Appetizers' AND Price > 10; 

-- Retrieve all items that belong to either "Desserts" or "Beverages"
SELECT * FROM restaurant WHERE Category IN ('Desserts', 'Beverages');

 -- Retrieve all items that are not in the "Appetizers" category
 SELECT * FROM restaurant WHERE Category <> 'Appetizers';
 
  -- Find items that are in the "Main Course" category and cost less than 20
  SELECT * FROM restaurant WHERE Category = 'Main Courses' AND Cost < 20;
  
 -- Find items that either belong to the "Salads" sub-category or have a Price above 25. 
 SELECT * FROM restaurant WHERE `Sub Category` = 'Salads' OR Price > 25;
 
-- DISTINCT 
-- Get a list of all unique categories available
SELECT DISTINCT Category FROM restaurant;

-- Get a list of all unique sub-categories
SELECT DISTINCT `Sub Category` FROM restaurant;

-- Find all unique price values available in the dataset
SELECT DISTINCT Price FROM restaurant;

-- LIMIT 
-- Retrieve the first 10 records from the dataset
SELECT * FROM restaurant LIMIT 10;

-- Retrieve the first 5 items from the "Beverages" category  
SELECT * FROM restaurant WHERE Category = 'Beverages' LIMIT 5;

 -- Retrieve the first 15 items sorted alphabetically by Item Name
 SELECT * FROM restaurant ORDER BY `Item Name` ASC LIMIT 15;
 
 -- 6. ORDER BY 
-- Retrieve all items sorted by name in ascending order
SELECT * FROM restaurant ORDER BY `Item Name` ASC;

-- Retrieve all items sorted by price in descending order
SELECT * FROM restaurant ORDER BY `Item Name` DESC;

-- Retrieve all items sorted by cost from lowest to highest
SELECT * FROM restaurant ORDER BY Cost ASC;

-- 7. Aggregate Functions (SUM, MIN, MAX, AVG, COUNT) 
-- Find the total number of items in the dataset
SELECT COUNT(*) AS Total_Items FROM restaurant;

 -- Find the highest and lowest price
 Select Max(price) as Highest_price, min(price) as lowest_price from 
restaurant;

-- Find the average price of all items
select avg(price) as Average_price from restaurant;

-- Count the number of items in each category.
select category, count(*) as item_count from restaurant group by
category;

-- Find the total cost of all items in the dataset
select sum(cost) as total_cost from restaurant;

 -- Find the number of items that have a Price greater than 10.
SELECT COUNT(*) as items_above_10 
FROM restaurant WHERE Price > 10;

-- Find the average price of items in each category
Select Category, avg(price) as avg_price from restaurant
group by Category;

 -- Find the total cost of all items in each category
select category, sum(cost) as total_cost from restaurant group by
Category;

-- Find the highest and lowest price in each category
select category, max(price) as highest_price, min(price) as lowest_price
from restaurant group by Category;

-- Find the highest price in each category and sort by 
-- highest price first
select category, max(price) as highest_price from restaurant
group by Category order by highest_price desc;

 -- Find categories with more than 5 times
select category, count(*) as total_items from restaurant 
group by Category having total_items >5;

 -- Find categories where the total price of items exceeds 500
select category, sum(price) as total_price 
from restaurant group by Category having total_price >500;

 -- Find categories where the total price of items exceeds 500
select category, sum(price) as total_price 
from restaurant group by Category having total_price >500;

 -- Find categories with total revenue between 300 and 1000
select category, sum(price) as total_revenue from restaurant group by Category
having total_revenue between 300 and 1000;

-- find all items that start with "C"
select `Item Name` from restaurant where `Item Name` like'C%';

-- Find all items that ends with "soup"
select `Item Name`  from restaurant where `Item Name`  like'%soup';

-- Find all items that contain "Pizza" anywhere in the name
select * from restaurant where `Item Name` like'%pizza%';

-- Find all items where the second letter is "e"
select * from restaurant where `Item Name` like '_e%';

-- Find all items containing "Chicken" and sort alphabetically
select `Item Name` from restaurant where `Item Name` like '%chicken%' order by `Item Name` asc;

-- Find all items that do NOT contain "Burger"
select * from restaurant where `Item Name` not like '%burger%';

/* 1. Categorizing Items Based on Price
Write a query that categorizes items as:
"Cheap" if the price is less than 10
"Moderate" if the price is between 10 and 20
"Expensive" if the price is greater than 20
Use an alias price_category for the new column.*/

SELECT `Item Name`,price, 
case
when price < 10 then "Cheap"
when price between 10 and 20 then 'Moderate'
when price > 20 then "Expensive"
else "Unknown"
end as price_category
from restaurant;

/*Assigning Discounts Based on Category
 Write a query that applies the following discounts:
10% discount for "Beverages"
15% discount for "Desserts"
No discount for other categories
Create a new column discounted_price to display the new price.*/

select item,`Item Name`, Category, price,
case
when category = "Beverages" then price *0.9
when Category = "Desserts" then price * 0.85
else price
end as discounted_price
from restaurant;

/*  Grouping Items by Cost Category
Write a query that groups items into:
"Low Cost" if the cost is less than 5
"Medium Cost" if the cost is between 5 and 15
"High Cost" if the cost is greater than 15
Count the number of items in each category.*/

select
case
when cost < 5 then "Low cost"
when cost between 5 and 15 then "Medium Cost"
else "High Cost"
end as cost_category,
count(*) as item_count
from restaurant group by cost_category;

# Change the category of "Caesar Salad" to "Healthy Choices".
UPDATE restaurant
SET `Item Name` = "HEALTHY CHOICES"
WHERE `Item Name` = "CAESAR SALAD";

describe restaurant;

-- Aggregate Functions
-- Find the total number of menu items in the dataset.
SELECT COUNT(DISTINCT `Item Name`) AS unique_items
FROM restaurant;

-- Calculate the highest, lowest, and average price of items.
SELECT MAX(price) AS highest_price, MIN(price) AS lowest_price, AVG(price) AS average_price
FROM restaurant;

-- Find the total cost of all menu items.
SELECT SUM(price) AS total_cost FROM restaurant;

-- Count the number of items per category.
SELECT category, COUNT(*) AS item_count FROM restaurant
GROUP BY category;

-- DISTINCT Values
-- Retrieve a list of unique menu categories.
SELECT DISTINCT category FROM restaurant;

-- Find all distinct sub-categories
SELECT DISTINCT `Sub Category` FROM restaurant;

-- Get a list of unique price values available in the dataset.
SELECT DISTINCT Price FROM restaurant;

-- GROUP BY Clause
-- Group the menu items by category and count the number of items in each.
SELECT category, COUNT(*) AS item_count FROM restaurant
GROUP BY category;

-- Find the average price of items in each category
SELECT category, AVG(price) AS average_price FROM restaurant GROUP BY category;

-- HAVING Clause
-- Retrieve categories with more than 5 items
SELECT category, COUNT(*) AS item_count FROM restaurant GROUP BY category
HAVING COUNT(*) > 5;

-- Find categories where the average price is greater than $20.
SELECT category, AVG(price) AS average_price FROM restaurant GROUP BY category
HAVING AVG(price) > 20;

-- LIKE Operator
-- Find all items where the name starts with "C".
SELECT * FROM restaurant WHERE `Item Name` LIKE 'C%';

-- Retrieve all items that contain the word "Chicken" in their name.
SELECT * FROM restaurant WHERE `Item Name` LIKE '%Chicken%';

-- Get all items that end with "Soup".
SELECT * FROM restaurant WHERE `Item Name` LIKE '%Soup';

-- CASE Statement
-- Apply a discount rule:
-- 10% discount for Beverages
SELECT `Item Name`, category, price, 
       CASE 
	WHEN category = 'Beverages' THEN price * 0.90 
	ELSE price  
 END AS discounted_price
FROM restaurant;

-- 15% discount for Desserts
SELECT `Item Name`, category, price, 
       CASE 
WHEN category = 'Desserts' THEN price * 0.85  
	ELSE price  
END AS discounted_price
FROM restaurant;

-- No discount for others
SELECT `Item Name`, category, price, 
       CASE 
WHEN category = 'Desserts' THEN price * 0.85 
ELSE price  
END AS discounted_price
FROM restaurant;

-- UPDATE Statement
-- Increase the price of all Beverages by $2.
UPDATE restaurant SET price = price + 2 WHERE category = 'Beverages';

-- Reduce the price of all items in the "Appetizers" category by 5%.
UPDATE restaurant SET price = price * 0.95 WHERE category = 'Appetizers';

-- DESCRIBE Statement
-- Display the table structure of the restaurant dataset.
DESCRIBE restaurant;
