CREATE DATABASE zepto_sales;
USE zepto_sales;

-- READ DATA --
SELECT * FROM zepto_v1;

# How many products are listed overall?
SELECT count(*) FROM zepto_v1;

# What are the unique product categories?
SELECT DISTINCT category FROM zepto_v1;

# Which products have discounts greater than 15%?
SELECT name, discountPercent FROM zepto_v1
WHERE discountpercent > 15;

# What is the average discount per category?
SELECT category, AVG(discountpercent) AS avg_discount
FROM zepto_v1
GROUP BY Category
ORDER BY avg_discount DESC;

# Which products are currently out of stock?
SELECT name,category FROM zepto_v1 WHERE outOfStock = TRUE;

# count of in_stock products
SELECT count(name), category, outOfStock FROM zepto_v1 
WHERE outOfStock = False
group by category;

# Top 5 most expensive products by MRP
SELECT name, mrp FROM zepto_V1
ORDER BY mrp DESC
LIMIT 5;

# Total available quantity per category
SELECT category, SUM(availableQuantity) AS total_quantity
FROM zepto_v1
GROUP BY Category
ORDER BY total_quantity DESC;