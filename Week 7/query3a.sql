-- Retrieve the following information for the cheapest product: the name and price of the product.

-- column names of result table:
-- pname | price

SELECT pname, price
FROM product
WHERE price = (SELECT MIN(price) FROM product);