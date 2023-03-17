-- h1t5
-- Long Nguyen 151317891

--Retrieve names and prices for those teas priced at 6.00 or more. Sort the result rows primarily in descending order by the price and secondarily in ascending order by the name.
SELECT name, price
FROM tea
WHERE price >= 6.00
ORDER BY price DESC, name ASC;