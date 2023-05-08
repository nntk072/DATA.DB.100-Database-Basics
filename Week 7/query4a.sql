-- Retrieve for all products the following information: product name, minimum rating, maximum rating, average rating and number of ratings assigned to the product.

-- Sort result table rows by product name  in ascending order.

-- column names of result table:
-- pname | min_rating | max_rating | avg_rating | no_rating

SELECT pname, MIN(rating) AS min_rating, MAX(rating) AS max_rating, AVG(rating) AS avg_rating, COUNT(rating) AS no_rating
FROM product
LEFT JOIN evaluation ON product.p_id = evaluation.p_id
GROUP BY pname
ORDER BY pname ASC;