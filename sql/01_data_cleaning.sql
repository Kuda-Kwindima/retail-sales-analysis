
-- Data verification
SELECT * FROM retail_db.retail_sales;

SHOW tables;
SELECT COUNT(*) FROM retail_sales;
SELECT * FROM retail_sales LIMIT 5;

-- This query checks data types
DESCRIBE retail_sales;

-- Cleaning the data 
ALTER TABLE retail_sales
CHANGE `Transaction ID` transaction_id INT;

ALTER TABLE retail_sales
CHANGE `Customer ID` customer_id VARCHAR(20);

ALTER TABLE retail_sales
CHANGE `Product Category` product_category VARCHAR(100);

ALTER TABLE retail_sales
CHANGE `Price per Unit` price_per_unit DECIMAL(10,2);

ALTER TABLE retail_sales
CHANGE `Total Amount` total_amount DECIMAL(10,2);

ALTER TABLE retail_sales
CHANGE `Date` transaction_date TEXT;

UPDATE retail_sales
SET transaction_date = STR_TO_DATE(transaction_date, '%Y-%m-%d');

ALTER TABLE retail_sales
MODIFY transaction_date DATE;

ALTER TABLE retail_sales
MODIFY Gender VARCHAR(10),
MODIFY Age INT,
MODIFY Quantity INT;

ALTER TABLE retail_sales
CHANGE Gender gender VARCHAR(10),
CHANGE Age age INT,
CHANGE Quantity quantity INT;

SELECT DISTINCT gender FROM retail_sales;

SELECT MIN(age), MAX(age) FROM retail_sales;

SELECT * FROM retail_sales LIMIT 10;

SELECT COUNT(*) FROM retail_sales;
