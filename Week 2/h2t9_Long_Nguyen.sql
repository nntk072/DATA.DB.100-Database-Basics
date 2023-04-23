-- h2t9
-- Long Nguyen
-- Retrieve the IDs and names for works that have not been in any exhibition.
-- Sort the result rows in ascending order by artwork ID.
-- Result columns:
-- artwork_id    |   artwork_name      

SELECT
    artwork.artwork_id,
    artwork.artwork_name
-- using JOIN to get the artwork_id that is not in displayed_at table
FROM
    artwork
        LEFT JOIN
    displayed_at ON artwork.artwork_id = displayed_at.artwork_id
WHERE
    displayed_at.artwork_id IS NULL
ORDER BY
    artwork.artwork_id ASC;