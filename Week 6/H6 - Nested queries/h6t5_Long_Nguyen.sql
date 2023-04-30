-- h6t5
-- Long Nguyen

-- Retrieve IDs and first and last names for artists who have done both paintings and drawings.
-- Sort the result rows in ascending order by artist ID.

-- Result column names:
-- artist_id | first_name | last_name

SELECT artist_id, first_name, last_name
FROM artist
WHERE artist_id IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'painting'
) AND artist_id IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'drawing'
)