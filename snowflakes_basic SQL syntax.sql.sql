---Q1. Display all columns for all transactions.

SELECT * 
FROM
"RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

---Q2. Display only the Transaction ID, Date, and Customer ID for all records.

SELECT
  TRANSACTION_ID,
  DATE,
  CUSTOMER_ID
FROM
  "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

 ---Q3. Display all the distinct product categories in the dataset.

SELECT 
DISTINCT(PRODUCT_CATEGORY)
FROM
"RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

---Q4. Display all the distinct gender values in the dataset.

SELECT DISTINCT(GENDER)
FROM
"RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

---Q5. Display all transactions where the Age is greater than 40.

SELECT * 
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE AGE > 40;

---Q6. Display all transactions where the Price per Unit is between 100 and 500.

SELECT *
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE PRICE_PER_UNIT BETWEEN 100 AND 500;

---Q7. Display all transactions where the Product Category is either 'Beauty' or 'Electronics'

SELECT *
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE PRODUCT_CATEGORY IN ('Beauty','Electronics');

---Q8. Display all transactions where the Product Category is not 'Clothing'.

SELECT *
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE PRODUCT_CATEGORY NOT IN ('Clothing');

---Q9. Display all transactions where the Quantity is greater than or equal to 3.
SELECT *
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
WHERE QUANTITY >= 3;

---Q10. Count the total number of transactions.
SELECT
COUNT(*) AS TOTAL_TRANSACTION 
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

---Q11. Find the average Age of customers.
SELECT 
AVG(AGE)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

---Q12. Find the total quantity of products sold.
SELECT
SUM(QUANTITY) AS TotalQuantitySold
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

---Q13. Find the maximum Total Amount spent in a single transaction.
SELECT 
MAX(TOTAL_AMOUNT)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

---Q14. Find the minimum Price per Unit in the dataset.
SELECT
MIN(PRICE_PER_UNIT)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

---Q15. Find the number of transactions per Product Category.
SELECT 
PRODUCT_CATEGORY,
COUNT(*) AS Transaction_Count
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY PRODUCT_CATEGORY;

---Q16. Find the total revenue (Total Amount) per gender.
SELECT 
GENDER,
SUM(TOTAL_AMOUNT) AS TOTAL_REVENUE
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY GENDER;

---Q17. Find the average Price per Unit per product category
SELECT 
PRODUCT_CATEGORY,
AVG(PRICE_PER_UNIT)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY PRODUCT_CATEGORY;

---Q18. Find the total revenue per product category where total revenue is greater than 10,000.
SELECT 
PRODUCT_CATEGORY,
SUM(TOTAL_AMOUNT) AS Total_revenue
FROM
"RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY PRODUCT_CATEGORY
HAVING SUM(TOTAL_AMOUNT) > 10000;

---Q19. Find the average quantity per product category where the average is more than 2
SELECT 
PRODUCT_CATEGORY,
AVG(QUANTITY)
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
GROUP BY PRODUCT_CATEGORY
HAVING AVG(QUANTITY) > 2;

---Q20. Display a column called Spending_Level that shows 'High' if Total Amount > 1000,otherwise 'Low'.
SELECT
TRANSACTION_ID,
TOTAL_AMOUNT,
CASE
    WHEN TOTAL_AMOUNT > 1000 THEN 'High'
    ELSE 'Low'
END AS SPENDING_LEVEL
FROM "RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"

---Q21. Display a new column called Age_Group that labels customers as:
---'Youth' if Age < 30
---'Adult' if Age is between 30 and 59
---'Senior' if Age >= 60

SELECT
 CUSTOMER_ID,
 AGE,
CASE
   WHEN AGE < 30 THEN 'Youth'
   WHEN AGE BETWEEN 30 AND 59 THEN 'Adult'
   WHEN AGE >= 60 THEN 'Senior'
 END AS AGE_GROUP
FROM
"RETAIL_SALES_DATASET"."PUBLIC"."ANALYSIS121"
