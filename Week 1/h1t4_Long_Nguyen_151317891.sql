-- h1t4
-- Long Nguyen 151317891

--Retrieve all the different values from the category column. Each category should be outputted once only. Sort the result rows in ascending order by the category column.
SELECT category
FROM tea
GROUP BY category
ORDER BY category ASC;




