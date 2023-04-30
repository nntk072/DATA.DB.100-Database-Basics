-- h6t12
-- Long Nguyen

-- Make a query that retrieves all artwork names that contain the string " of " (that is, the string contains a space, a letter combination of, and a space in a row).
-- Sort the result rows in ascending order by artwork title.

-- Result column names:
-- artwork_name


SELECT artwork_name
FROM artwork
WHERE artwork_name LIKE '% of %'
ORDER BY artwork_name ASC;