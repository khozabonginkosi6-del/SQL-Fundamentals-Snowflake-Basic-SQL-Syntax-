# 📘 Retail Sales SQL Analysis Queries

## 📌 Summary of the Case Study
This case study demonstrates how SQL queries can be applied to analyze **retail sales data** stored in the dataset `RETAIL_SALES_DATASET.PUBLIC.ANALYSIS121`. The project focused on filtering transactions, aggregating revenue and quantities, classifying customers and transactions, and applying conditional logic with CASE statements. The goal was to transform raw transactional data into **business insights** that support decision-making in sales, marketing, and customer segmentation.

---

## 🔍 How the Case Study Was Done
1. **Dataset Exploration**
   - Source: `RETAIL_SALES_DATASET.PUBLIC.ANALYSIS121`
   - Example columns:  
     `TRANSACTION_ID`, `DATE`, `CUSTOMER_ID`, `AGE`, `GENDER`,  
     `PRODUCT_CATEGORY`, `QUANTITY`, `PRICE_PER_UNIT`, `TOTAL_AMOUNT`.

2. **SQL Query Development**
   - **Basic Exploration**
     - Displayed all columns for all transactions.  
     - Selected specific fields such as Transaction ID, Date, and Customer ID.  
     - Extracted distinct product categories and gender values.  

   - **Filtering**
     - Transactions where Age > 40.  
     - Transactions with Price per Unit between 100 and 500.  
     - Transactions in specific categories (Beauty, Electronics) or excluding Clothing.  
     - Transactions with Quantity ≥ 3.  

   - **Aggregations**
     - Counted total transactions.  
     - Calculated average customer age.  
     - Summed total quantity sold.  
     - Found maximum Total Amount and minimum Price per Unit.  

   - **Grouped Insights**
     - Number of transactions per product category.  
     - Total revenue per gender.  
     - Average Price per Unit per product category.  
     - Total revenue per product category with HAVING > 10,000.  
     - Average quantity per product category with HAVING > 2.  

   - **Conditional Logic**
     - Classified transactions into Spending Levels (High vs. Low).  
     - Labeled customers into Age Groups (Youth, Adult, Senior).  

3. **Techniques Applied**
   - **Filtering with WHERE** → Age, price ranges, product categories, quantities.  
   - **Aggregations with SUM, AVG, COUNT, MAX, MIN** → Revenue, quantities, customer demographics.  
   - **GROUP BY and HAVING** → Category-level insights and thresholds.  
   - **CASE Statements** → Customer segmentation and transaction classification.  

---

## 📊 Insights Found
- Customers aged **over 40** contributed a significant portion of transactions.  
- Products priced between **100–500** formed a key mid-range segment.  
- **Beauty and Electronics** categories showed strong transaction volumes.  
- **Clothing** was excluded to highlight other category contributions.  
- High-value transactions (Total Amount > 1000) were identified as **premium spending behavior**.  
- Customer segmentation revealed clear **Youth, Adult, and Senior groups**, useful for targeted marketing.  
- Gender-based revenue analysis showed **differences in spending patterns**.  
- Categories with revenue > 10,000 were flagged as **top performers**.  
- Average quantity analysis highlighted categories with **bulk purchases**.  

---

## 🎯 Summary of Findings
By applying SQL queries to the dataset, the project uncovered:  
- **Revenue drivers** across product categories and genders.  
- **Customer segmentation** by age and spending levels.  
- **Transaction-level insights** into pricing, product demand, and purchase behavior.  

This demonstrates how SQL can be leveraged to deliver **business intelligence** that supports **sales strategy, customer targeting, and inventory management**.

---

## 🛠️ Tools Used
- **SQL-compatible environments** (BigQuery, Snowflake, PostgreSQL, MySQL, SQL Server)  
- **SQL functions** (SELECT, DISTINCT, WHERE, SUM, AVG, COUNT, MAX, MIN, GROUP BY, HAVING, CASE)  
- **Optional Visualization Tools**: Power BI, Excel (pivot tables, dashboards) 
