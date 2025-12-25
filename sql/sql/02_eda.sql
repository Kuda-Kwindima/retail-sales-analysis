-- SQL EDA

-- Total sales 
SELECT 
    ROUND(SUM(total_amount), 2) AS total_revenue
FROM retail_sales;

SELECT product_category, SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY product_category
ORDER BY revenue DESC;

SELECT 
  round(SUM(total_amount),2) as total_revenue
from retail_sales;

-- Total Transactions & Customers
SELECT 
    COUNT(DISTINCT transaction_id) AS total_transactions,
    COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;

-- Revenue by Month
SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    ROUND(SUM(total_amount), 2) AS revenue
FROM retail_sales
GROUP BY month
ORDER BY month;

-- Month-over-Month Growth (WINDOW FUNCTION)
SELECT
    month,
    revenue,
    revenue - LAG(revenue) OVER (ORDER BY month) AS revenue_change
FROM (
    SELECT 
        DATE_FORMAT(transaction_date, '%Y-%m') AS month,
        SUM(total_amount) AS revenue
    FROM retail_sales
    GROUP BY month
) t;

-- Top Product Categories by Revenue
SELECT 
    product_category,
    ROUND(SUM(total_amount), 2) AS revenue
FROM retail_sales
GROUP BY product_category
ORDER BY revenue DESC;

-- Category Contribution % (WINDOW FUNCTION)
SELECT
    product_category,
    ROUND(SUM(total_amount), 2) AS revenue,
    ROUND(
        SUM(total_amount) / SUM(SUM(total_amount)) OVER () * 100, 2
    ) AS revenue_percentage
FROM retail_sales
GROUP BY product_category
ORDER BY revenue_percentage DESC;

-- Average Spend per Customer
SELECT
    customer_id,
    ROUND(SUM(total_amount), 2) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Customer Segmentation (LOW / MEDIUM / HIGH)
SELECT
    customer_id,
    SUM(total_amount) AS total_spent,
    CASE
        WHEN SUM(total_amount) < 500 THEN 'Low Value'
        WHEN SUM(total_amount) BETWEEN 500 AND 1500 THEN 'Medium Value'
        ELSE 'High Value'
    END AS customer_segment
FROM retail_sales
GROUP BY customer_id;

-- Revenue by Gender
SELECT
    gender,
    ROUND(SUM(total_amount), 2) AS revenue
FROM retail_sales
GROUP BY gender;

-- Age Group Analysis
SELECT
    CASE
        WHEN age < 25 THEN 'Under 25'
        WHEN age BETWEEN 25 AND 34 THEN '25–34'
        WHEN age BETWEEN 35 AND 44 THEN '35–44'
        ELSE '45+'
    END AS age_group,
    ROUND(SUM(total_amount), 2) AS revenue
FROM retail_sales
GROUP BY age_group
ORDER BY revenue DESC;

-- Average Basket Size
SELECT 
    ROUND(AVG(quantity), 2) AS avg_items_per_transaction
FROM retail_sales;

-- Price Sensitivity (High Quantity vs Low Price)
SELECT
    product_category,
    ROUND(AVG(price_per_unit), 2) AS avg_price,
    ROUND(AVG(quantity), 2) AS avg_quantity
FROM retail_sales
GROUP BY product_category;

