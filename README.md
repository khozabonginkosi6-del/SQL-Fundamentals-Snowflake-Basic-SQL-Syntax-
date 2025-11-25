# SQL-Fundamentals-Snowflake-Basic-SQL-Syntax-
📘 SQL Practice Queries — Retail Sales Dataset
📌 Overview
This project demonstrates SQL queries for exploring, filtering, aggregating, and classifying retail sales data from the table:

Code
RETAIL_SALES_DATASET.PUBLIC.ANALYSIS121
The queries cover:

Basic retrieval (SELECT *)

Distinct values

Filtering with WHERE, IN, NOT IN, BETWEEN

Aggregations (COUNT, SUM, AVG, MAX, MIN)

Grouping (GROUP BY, HAVING)

Conditional logic (CASE)

🛠️ Requirements
SQL-compatible database (Snowflake, PostgreSQL, MySQL, SQL Server, Oracle, etc.)

Table: RETAIL_SALES_DATASET.PUBLIC.ANALYSIS121

Example columns: TRANSACTION_ID, DATE, CUSTOMER_ID, PRODUCT_CATEGORY, GENDER, AGE, PRICE_PER_UNIT, QUANTITY, TOTAL_AMOUNT

📂 Queries
1. 🔎 Display All Columns
sql
SELECT * 
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Retrieves all records and columns.

2. 🧾 Transaction ID, Date, Customer ID
sql
SELECT TRANSACTION_ID, DATE, CUSTOMER_ID
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Displays only key identifiers for each transaction.

3. 🛍️ Distinct Product Categories
sql
SELECT DISTINCT(PRODUCT_CATEGORY)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Lists all unique product categories.

4. 🚻 Distinct Gender Values
sql
SELECT DISTINCT(GENDER)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Shows all unique gender values.

5. 👵 Transactions Where Age > 40
sql
SELECT * 
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE AGE > 40;
Filters customers older than 40.

6. 💵 Price per Unit Between 100 and 500
sql
SELECT *
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE PRICE_PER_UNIT BETWEEN 100 AND 500;
Retrieves transactions with mid-range unit prices.

7. 💄📱 Beauty or Electronics Transactions
sql
SELECT *
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE PRODUCT_CATEGORY IN ('Beauty','Electronics');
Filters transactions in Beauty or Electronics categories.

8. 👕 Exclude Clothing Transactions
sql
SELECT *
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE PRODUCT_CATEGORY NOT IN ('Clothing');
Shows all transactions except Clothing.

9. 📦 Quantity ≥ 3
sql
SELECT *
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE QUANTITY >= 3;
Filters bulk purchases (3 or more units).

10. 🔢 Count Total Transactions
sql
SELECT COUNT(*) AS TOTAL_TRANSACTION
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Returns total number of transactions.

11. 📊 Average Age of Customers
sql
SELECT AVG(AGE)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Calculates average customer age.

12. 📦 Total Quantity Sold
sql
SELECT SUM(QUANTITY) AS TotalQuantitySold
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Aggregates total units sold.

13. 💰 Maximum Transaction Amount
sql
SELECT MAX(TOTAL_AMOUNT)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Finds the highest spending in a single transaction.

14. 🏷️ Minimum Price per Unit
sql
SELECT MIN(PRICE_PER_UNIT)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Retrieves the lowest unit price.

15. 🛍️ Transaction Count per Product Category
sql
SELECT PRODUCT_CATEGORY, COUNT(*) AS Transaction_Count
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY PRODUCT_CATEGORY;
Counts transactions grouped by product category.

16. 🚻 Total Revenue per Gender
sql
SELECT GENDER, SUM(TOTAL_AMOUNT) AS TOTAL_REVENUE
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY GENDER;
Aggregates revenue by gender.

17. 💵 Average Price per Unit per Category
sql
SELECT PRODUCT_CATEGORY, AVG(PRICE_PER_UNIT)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY PRODUCT_CATEGORY;
Calculates average unit price per category.

18. 💰 Revenue per Category > 10,000
sql
SELECT PRODUCT_CATEGORY, SUM(TOTAL_AMOUNT) AS Total_revenue
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY PRODUCT_CATEGORY
HAVING SUM(TOTAL_AMOUNT) > 10000;
Filters categories with revenue above 10,000.

19. 📦 Average Quantity per Category > 2
sql
SELECT PRODUCT_CATEGORY, AVG(QUANTITY)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY PRODUCT_CATEGORY
HAVING AVG(QUANTITY) > 2;
Shows categories with average quantity above 2.

20. 💳 Spending Level Classification
sql
SELECT TRANSACTION_ID, TOTAL_AMOUNT,
       CASE WHEN TOTAL_AMOUNT > 1000 THEN 'High'
            ELSE 'Low'
       END AS SPENDING_LEVEL
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Labels transactions as High or Low spending.

21. 👶👨👴 Age Group Classification
sql
SELECT CUSTOMER_ID, AGE,
       CASE WHEN AGE < 30 THEN 'Youth'
            WHEN AGE BETWEEN 30 AND 59 THEN 'Adult'
            WHEN AGE >= 60 THEN 'Senior'
       END AS AGE_GROUP
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121";
Categorizes customers into Youth, Adult, Senior groups.
