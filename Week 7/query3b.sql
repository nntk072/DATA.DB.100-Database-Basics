-- Retrieve the following information for the cheapest product: product name, price and brand name.

-- column names of result table:
-- pname | price | bname

SELECT pname, price, bname
FROM product, brand
WHERE product.b_id = brand.b_id
AND price = (SELECT MIN(price) FROM product);