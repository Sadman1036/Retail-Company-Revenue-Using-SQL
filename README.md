# Online-Retail-Company-Sales-Analysis-Using-SQL

### Objective :
The objective of the entire analysis is to gain insights into the product performance, customer satisfaction, and market influence of brands by analyzing sales data, product ratings, and associated brands

## Questions and SQL Statements Used :
SQL functions that I used in this project:

### Total Revenue Generated from Sales for Each Brand
  * Question: What is the total revenue generated from sales for each brand?
  * Function Used: SUM() to calculate the total revenue generated.
  * Query Explanation: This query joins the brands and finance tables on the product_id column and then sums up the revenue column for each      brand, providing the total revenue generated from sales for each brand.

### Brand with the Highest Average Rating
* Question: Which brand has the highest average rating?
* Function Used: AVG() to calculate the average rating.
* Query Explanation: This query joins the brands and reviews tables on the product_id column and then calculates the average rating for each
  brand using the AVG() function, allowing us to identify the brand with the highest average rating.

### Products with the Highest Revenue
* Question: Which products have the highest revenue?
* Function Used: SUM() to calculate the total revenue generated.
* Query Explanation: This query joins the info and finance tables on the product_id column and then sums up the revenue column for each
  product, allowing us to identify the products with the highest revenue.

### Average Rating for Products in Each Price Range

* Question: What is the average rating for products in each price range?
* Function Used: AVG() to calculate the average rating.
* Query Explanation: This query categorizes products into price ranges using a CASE statement based on their listing_price, and then
  calculates the average rating for products in each price range, providing insights into customer satisfaction across different price
  ranges.
  
### Distribution of Ratings for Each Brand
* Question: What is the distribution of ratings for each brand?
* Functions Used: MIN(), MAX(), AVG(), COUNT().
* Query Explanation: This query calculates various statistics (minimum, maximum, average, count) for the ratings associated with each
  product, allowing us to understand the distribution of ratings for products associated with each brand.

### Top Revenue Generated Products with Brands

* Question: What are the top revenue-generated products for each brand?
* Function Used: SUM() to calculate the total revenue generated.
* Query Explanation: This query joins the brands, info, and finance tables to identify the top revenue-generated products for each brand by
  summing up the revenue for each product, providing insights into the top-performing products within each brand's portfolio


### Impact of Discounts on Revenue by Brand

* Question: How does the combination of discounts offered by different brands influence the total revenue generated?
* Function Used: SUM() to calculate total revenue and FORMAT() to format the output.
* Query Explanation: The query assesses how different discounts impact total revenue by brand. It joins the brands and finance tables, groups the results by brand and discount, and sorts them by brand and discount.

### Impact of Discounts on Revenue by Product

* Question: How do discounts affect revenue generation for different products?
* Function Used: SUM() to calculate total revenue and FORMAT() to format the output.
* Query Explanation: This query evaluates the effect of discounts on revenue for each product by joining the info and finance tables, grouping the results by product and discount, and sorting them by product and discount.

## Analaysis Summary

* Adidas significantly outperforms Nike in total revenue, with Adidas earning over $11 million compared to Nike's approximately $802,000. 
  This indicates Adidas has a stronger market presence or sales performance in the dataset provided.
* Adidas also leads in average ratings, scoring 3.37 compared to Nike's 2.79. This suggests that not only does Adidas have higher sales, 
  but their products are generally better received according to customer reviews.
* Products priced over $150 have the highest average ratings, followed closely by those in the $101-150 range. Products priced at $0-50 have the lowest average ratings, which could indicate that higher-priced items are perceived as better quality or more satisfactory.
* Among Adidas products, the "Unisex Originals CRAIG GREEN KONTUUR II SHOES" leads in revenue, suggesting high popularity or higher pricing. This highlights successful product lines that might warrant further marketing emphasis or stock investment.
* Query results show that for Adidas, higher discounts (specifically a discount rate of 0.4 and 0.5) correlate with substantial increases in revenue, suggesting that strategic discounts can effectively boost sales. For Nike, no discounts have been applied, which may be an area for potential growth through promotional strategies.
  



