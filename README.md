# SQL_Developer_Day_6_Task_6
Sixth Task of SQL Developer  Internship @ Elevate Labs

Project Steps

Step 1: Create Customers Table

Defined table structure with customer_id, customer_name, country, and loyalty_points.

Inserted 50 sample customer records from multiple countries with varying loyalty points.

Step 2: Create Products Table

Defined table with product_id, product_name, category, and price.

Inserted 50 products across categories like Electronics, Fashion, Stationery, Home Appliances, and Sports.

Step 3: Create Orders Table

Defined table with order_id, customer_id, product_id, order_date, and quantity.

Established foreign keys to link Orders_table with Customers and Products_table.

Inserted 100+ realistic sample orders mapping customers to purchased products.

Step 4: Data Verification

Queried all three tables using SELECT * to ensure data was loaded correctly.

Step 5: SQL Queries for Insights

Scalar Subquery:

Find customers whose loyalty points are greater than the average loyalty points of all customers.

Correlated Subquery with Window Function:

Identify the most expensive product purchased by each customer using DENSE_RANK.

Subquery with IN:

Find customers who have purchased products in the Fashion category.

Subquery with EXISTS:

Find customers who have purchased at least one Electronics product.

Ranking Query:

Determine the customer(s) with the highest loyalty points using DENSE_RANK.

Step 6: Results & Insights

Segmented customers by spending and category.

Identified high-loyalty and repeat customers.

Derived category-based purchase behavior (Fashion vs. Electronics).

Highlighted top-value customers and products for potential business decisions.
