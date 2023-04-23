-- h5t4
-- Long Nguyen

-- Retrieve IDs, first names, and last names for artists who have made paintings but not drawings.
-- Sort the result rows in ascending order by artist ID.

-- Result table column names:
-- artist_id | first_name | last_name
-- Note the usage the ORDER BY part in queries containing the INTERSECT, UNION, or EXCEPT operation.
-- using intersect, union, except
SELECT artist_id, first_name, last_name

FROM artist
WHERE artist_id IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'painting'
)
EXCEPT
SELECT artist_id, first_name, last_name
FROM artist
WHERE artist_id IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'drawing'
)
ORDER BY artist_id ASC;