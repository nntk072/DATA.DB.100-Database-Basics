-- h6t13
-- Long Nguyen

-- Make a query that retrieves the names for works with a creation year between 1500 and 1600.  Use the BETWEEN operator.
-- Sort the result rows in ascending order by artwork title.

-- Result column names:
-- artwork_name


SELECT artwork_name
FROM artwork
WHERE year_created BETWEEN 1500 AND 1600
ORDER BY artwork_name ASC;