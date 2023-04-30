-- h6t1
-- Long Nguyen

-- Retrieve IDs and names for works that have not been featured in one or more exhibitions. Use the IN operator.
-- Sort the result rows in ascending order by artwork ID.

-- Result column names:
-- artwork_id | artwork_name

SELECT artwork_id, artwork_name
FROM artwork
WHERE artwork_id IN (
    SELECT artwork_id
    FROM displayed_at
)