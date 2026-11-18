
-- =====================================================
-- PROJECT: CUSTOMER BEHAVIOR & SALES ANALYSIS
-- SECTION 1: DATABASE EXPLORATION
-- DATA SOURCE: GOLD LAYER VIEWS FROM PROJECT 1
-- =====================================================


-- 1. DATABASE EXPLORATION

-- Explore all objects in the database
SELECT *
FROM information_schema.tables;

-- Explore all columns in the customer dimension
SELECT *
FROM information_schema.columns
WHERE table_name = 'dim_customers';


-- 2. DIMENSION EXPLORATION

-- Explore all countries our customers come from
SELECT DISTINCT country
FROM gold.dim_customers;

-- Explore all product categories and subcategories
SELECT DISTINCT category, subcategory
FROM gold.dim_products
ORDER BY 1, 2;


-- 3. DATE EXPLORATION

-- Find the first and last order dates
-- Calculate the available sales period in years
SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    YEAR(MAX(order_date)) - YEAR(MIN(order_date)) AS order_range_years
FROM gold.fact_sales;

-- Find the youngest and oldest customers
SELECT
    MIN(birthdate) AS oldest_birthdate,
    TIMESTAMPDIFF(YEAR, MIN(birthdate), NOW()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    TIMESTAMPDIFF(YEAR, MAX(birthdate), NOW()) AS youngest_age
FROM gold.dim_customers;


-- 4. MEASURE EXPLORATION

-- Find total sales
SELECT SUM(sales_amount) AS total_sales
FROM gold.fact_sales;

-- Find total quantity sold
SELECT SUM(quantity) AS total_quantity
FROM gold.fact_sales;

-- Find average selling price
SELECT AVG(price) AS average_selling_price
FROM gold.fact_sales;

-- Find total number of orders
SELECT COUNT(order_number) AS total_orders
FROM gold.fact_sales;

-- Find distinct number of orders
SELECT COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales;

-- Find total number of products
SELECT COUNT(product_key) AS total_products
FROM gold.dim_products;

-- Find total number of customers
SELECT COUNT(customer_key) AS total_customers
FROM gold.dim_customers;

-- Find customers who have placed an order
SELECT COUNT(DISTINCT customer_key) AS total_customers
FROM gold.fact_sales;
