-- h6t3
-- Long Nguyen

-- Retrieve IDs and names for works that have been featured in one or more exhibitions. Use the EXISTS operator.
-- Sort the result in ascending order by artwork ID.

-- Result column names:
-- artwork_id | artwork_name

SELECT artwork_id, artwork_name
FROM artwork
WHERE EXISTS (
    SELECT *
    FROM displayed_at
    WHERE displayed_at.artwork_id = artwork.artwork_id
)