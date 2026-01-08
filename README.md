# 📈 SQL Sales Analysis Project

## 🔍 Project Overview
This project analyzes sales data to generate actionable business insights using SQL.  
It demonstrates practical skills in data extraction, aggregation, and reporting from a structured sales database.

## 🛠 Tools Used
- **SQL** (MySQL)
- **Database Management**
- **Git & GitHub**

## 📂 Database Details
- **Database Name:** sales_db  
- **Table Name:** sales  
- Example columns: `order_id`, `product_id`, `category`, `quantity`, `unit_price`, `order_date`

## 📊 Analysis Performed
1. **Total Sales Calculation** – Overall revenue generated  
2. **Category-wise Revenue** – Performance by product category  
3. **Top-selling Product** – Identify products with highest sales  
4. **Monthly Sales Trend** – Track sales over time  
5. **Average Order Value (AOV)** – Customer purchase insights  

## 🧩 Sample SQL Queries
```sql
-- Total Sales
SELECT SUM(quantity * unit_price) AS total_sales FROM sales;

-- Top-selling Product
SELECT product_id, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_id
ORDER BY total_quantity DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(quantity * unit_price) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;


