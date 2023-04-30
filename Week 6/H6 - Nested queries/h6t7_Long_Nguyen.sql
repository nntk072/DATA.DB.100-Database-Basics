-- h6t7
-- Long Nguyen

-- Make a query that retrieves the name, value, and creation year of the most valuable work.

-- Result column names:
-- artwork_name | value | year_created

SELECT artwork_name, value, year_created
FROM artwork
WHERE value = (
    SELECT MAX(value)
    FROM artwork
);