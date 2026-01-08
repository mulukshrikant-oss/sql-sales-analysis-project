CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    quantity INT,
    price INT,
    order_date DATE
);

INSERT INTO sales VALUES
(101, 'Laptop', 'Electronics', 2, 50000, '2023-01-10'),
(102, 'Mobile', 'Electronics', 5, 20000, '2023-01-15'),
(103, 'Shoes', 'Fashion', 3, 3000, '2023-02-05'),
(104, 'T-Shirt', 'Fashion', 10, 800, '2023-02-10'),
(105, 'Headphones', 'Electronics', 4, 2500, '2023-03-01');

SELECT SUM(quantity * price) AS total_sales FROM sales;

SELECT category, SUM(quantity * price) AS category_sales
FROM sales
GROUP BY category;

SELECT product_name, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 1;

SELECT MONTH(order_date) AS month,
       SUM(quantity * price) AS monthly_sales
FROM sales
GROUP BY MONTH(order_date);

SELECT AVG(quantity * price) AS avg_order_value
FROM sales;
