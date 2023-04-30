-- h6t6
-- Long Nguyen

-- Retrieve IDs and first and last names for artists who have done paintings but not drawings.
-- Sort the result rows in ascending order by artist ID.

-- Result column names:
-- artist_id | first_name | last_name

SELECT artist_id, first_name, last_name
FROM artist
WHERE artist_id IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'painting'
) AND artist_id NOT IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'drawing'
)