📊 Retail Sales Analysis (SQL Project)

📌 Project Overview
This project analyzes retail sales transactions to uncover key business insights related to revenue performance, customer behavior, product categories, and sales trends over time. The analysis was performed using MySQL, focusing on data cleaning, exploratory data analysis (EDA), and business-driven metrics.

The dataset is synthetic but designed to closely reflect real-world retail scenarios, making it suitable for demonstrating practical SQL skills.

🧰 Tools & Technologies
MySQL (data cleaning, transformations, EDA)
MySQL Workbench
SQL (Window Functions, Aggregations, CASE statements)

🗂 Dataset Description
The dataset contains retail transaction-level data with the following key fields:
transaction_id
transaction_date
customer_id
gender
age
product_category
quantity
price_per_unit
total_amount

Each row represents a single purchase transaction.

🧹 Data Cleaning & Preparation

Key data preparation steps included:
Renaming columns to follow snake_case conventions
Correcting data types (e.g., converting dates from text to DATE)
Validating numeric fields (quantity, prices, total amount)
Recalculating total revenue as quantity × price_per_unit
Normalizing categorical fields (e.g., gender values)

These steps ensure accuracy and consistency before analysis.

📈 Key Business Questions & Insights

1️⃣ Overall Performance
Total revenue generated
Total number of transactions and customers
Average transaction value

2️⃣ Sales Trends Over Time
Monthly revenue trends
Month-over-month revenue growth using SQL window functions (LAG)
Insight: Revenue shows clear variation across months, indicating potential seasonality in customer purchasing behavior.

3️⃣ Product Category Performance
Revenue contribution by product category
Percentage contribution of each category to total revenue
Insight: A small number of product categories contribute a significant portion of overall revenue, consistent with the Pareto principle (80/20 rule).

4️⃣ Customer Behavior Analysis
Customer spend distribution
Customer segmentation into low, medium, and high-value groups
Insight: High-value customers represent a smaller segment but drive a disproportionate share of revenue.

5️⃣ Demographic Insights
Revenue contribution by gender
Revenue distribution across age groups
Insight: Certain age brackets contribute more strongly to revenue, suggesting opportunities for targeted marketing.

🧠 Key SQL Concepts Demonstrated
GROUP BY and aggregate functions
Window functions (LAG, OVER)
Conditional logic using CASE
Time-based analysis
Business-oriented KPI calculations

📁 Project Structure

retail-sales-analysis/
│
├── sql/
│   ├── 01_data_cleaning.sql
│   ├── 02_eda.sql
│
├── data/
│   └── retail_sales.csv
│
└── README.md

🚀 Next Steps
Visualize insights using Python (pandas & matplotlib)
Expand analysis to include forecasting or cohort analysis
Optimize queries with indexing for performance

👤 Author
Kudakwashe A. Kwindima
Aspiring Data Scientist
Career transition from accounting into data science 
