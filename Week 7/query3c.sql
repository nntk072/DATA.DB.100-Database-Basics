-- Retrieve the following information for the cheapest McCee brand product: product name and price.

-- column names of result table:
-- pname | price

SELECT pname, price
FROM product
WHERE b_id = 1
ORDER BY price ASC
LIMIT 1;