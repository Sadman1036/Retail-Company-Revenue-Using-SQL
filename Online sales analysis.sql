/*
The imported data was converted from text to numeric values for the columns:
	listing_price,
    sale_price,
    discount,
    revenue*/
  
DESCRIBE finance;
USE Online_retail_store;


/*Total_revenu by brand*/

/* What is the total revenue generated from sales for each brand? */

SELECT brands.brand,
       FORMAT(SUM(finance.revenue),2) AS total_revenue
FROM brands
JOIN finance ON brands.product_id = finance.product_id
GROUP BY brands.brand
ORDER BY total_revenue DESC;

/* Which brand has the highest average rating? */
SELECT brands.brand,
       FORMAT(AVG(reviews.rating), 2) AS Avg_Ratings
FROM brands
JOIN reviews ON brands.product_id = reviews.product_id
GROUP BY brands.brand
ORDER BY Avg_Ratings DESC;


/* Which products have the highest revenue? */
SELECT info.product,finance.product_id,SUM(finance.revenue) AS total_revenue
FROM info
JOIN finance ON finance.product_id = info.product_id
GROUP BY info.product,info.product_id
ORDER BY total_revenue DESC;

/* Which products have the highest revenue? */

SELECT
    price_range,
   FORMAT(AVG(rating),2) AS avg_rating
FROM (
    SELECT
        CASE
            WHEN listing_price <= 50 THEN '0-50'
            WHEN listing_price <= 100 THEN '51-100'
            WHEN listing_price <= 150 THEN '101-150'
            ELSE 'Over 150'
        END AS price_range,
        product_id
    FROM
        finance
) AS price_ranges
JOIN reviews ON price_ranges.product_id = reviews.product_id
GROUP BY price_range
ORDER BY avg_rating DESC;

/* What is the distribution of ratings for each brand?*/

SELECT
    info.product,
    MIN(reviews.rating) AS min_rating,
    MAX(reviews.rating) AS max_rating,
    AVG(reviews.rating) AS avg_rating,
    COUNT(*) AS rating_count
FROM
   info
JOIN
    reviews ON reviews.product_id = info.product_id
GROUP BY
    info.product
ORDER BY
    rating_count DESC;
    
/* Top Revenue Generated Products with Brands*/

SELECT
    brands.brand,
    brands.product_id,
    info.product,
    SUM(finance.revenue) AS total_revenue
FROM
    brands
JOIN
    info ON brands.product_id = info.product_id
JOIN
    finance ON info.product_id = finance.product_id
GROUP BY
    brands.brand,
    brands.product_id,
    info.product
ORDER BY
    total_revenue DESC
LIMIT 10;

/* How does the combination of discounts offered by different brands influence the total revenue generated from sales? */
SELECT
    brands.brand,
    finance.discount,
    FORMAT(SUM(finance.revenue),2) AS total_revenue
FROM
    brands
JOIN
    finance ON brands.product_id = finance.product_id
GROUP BY
    brands.brand,
    finance.discount
ORDER BY
    brands.brand,
    finance.discount;
    
/* How does the combination of discounts offered for different products influence the total revenue generated from sales? */
SELECT
    info.product,
    finance.discount,
    FORMAT(SUM(finance.revenue),2) AS total_revenue
FROM
    info
JOIN
    finance ON info.product_id = finance.product_id
GROUP BY
    info.product,
    finance.discount
ORDER BY
    info.product,
    finance.discount;


