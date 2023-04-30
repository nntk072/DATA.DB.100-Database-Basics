-- h6t4
-- Long Nguyen

-- Retrieve IDs and names for works that have not been featured in any of the exhibitions. Use the NOT EXISTS operator.
-- Sort the result rows in ascending order by artwork ID.


-- Result column names:
-- artwork_id | artwork_name

SELECT artwork_id, artwork_name
FROM artwork
WHERE NOT EXISTS (
    SELECT *
    FROM displayed_at
    WHERE displayed_at.artwork_id = artwork.artwork_id
)