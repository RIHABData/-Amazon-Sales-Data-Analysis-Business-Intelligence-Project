Show databases;
create database Amazon;
Show databases;

/**Retrieve all data**/
SELECT * FROM AmazonSales;

/**View Data**/
SELECT * FROM AmazonSales LIMIT 5;

/**Count Total Products**/
select count(*) as total_products
from Amazonsales;

/**Average rating**/
select avg(rating) as avg_rating from Amazonsales;

/**Most expensive products**/
select product_name, actual_price from Amazonsales order by actual_price DESC limit 10;

/**Cheapest Products**/
select product_name, actual_price from Amazonsales order by actual_price ASC limit 10;

/**Highest discount products**/
select product_name, discount_percentage from Amazonsales order by discount_percentage limit 10;

/**Product count per category**/
select category, count(*) as total_products from Amazonsales group by category order by total_products DESC;

/**Average rating per category**/
SELECT category, AVG(rating) AS avg_rating FROM Amazonsales
GROUP BY category ORDER BY avg_rating DESC;

/**Top rated products (min reviews filter)**/
SELECT product_name, rating, rating_count FROM Amazonsales WHERE rating_count > 1000 ORDER BY rating DESC
LIMIT 10;

/**Low rated products**/
select product_name, rating from Amazonsales order by rating ASC limit 10;

/**Best value products (high rating + low price)**/
select product_name , rating , discounted_price
from Amazonsales order by rating DESC, discounted_price ASC limit 10;

/**Category performance summary**/
SELECT category, COUNT(*) AS total_products, AVG(rating) AS avg_rating, AVG(discount_percentage) AS avg_discount
FROM Amazonsales GROUP BY category
ORDER BY avg_rating DESC;

/**Revenue proxy**/
select product_name, actual_price * rating_count as revenue_proxy from Amazonsales order by revenue_proxy DESC limit 10;










