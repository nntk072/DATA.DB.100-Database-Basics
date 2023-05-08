-- Continue the version “A” of the query to include the number of different users who have evalueted the product in the result table.

-- column names of result table:
-- pname | min_rating | max_rating | avg_rating | no_rating | different_users

SELECT pname, MIN(rating) AS min_rating, MAX(rating) AS max_rating, AVG(rating) AS avg_rating, COUNT(rating) AS no_rating, COUNT(DISTINCT u_id) AS different_users
FROM product
LEFT JOIN evaluation ON product.p_id = evaluation.p_id
GROUP BY pname
ORDER BY pname ASC;