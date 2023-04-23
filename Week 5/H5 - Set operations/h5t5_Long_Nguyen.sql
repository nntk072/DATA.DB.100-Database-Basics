-- h5t5
-- Long Nguyen

-- Retrieve IDs, first names, and last names for those artists who have done only paintings and nothing else.
-- Sort the result rows in ascending order by artist ID.

-- result column names:
-- artist_id | first_name | last_name

-- Submit the query in your solution document (* .sql).

-- Note the usage of the ORDER BY part in queries containing the INTERSECT, UNION, or EXCEPT operation.

SELECT artist_id, first_name, last_name
FROM artist
WHERE artist_id IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'painting'
    EXCEPT
    SELECT artist_id
    FROM artwork
    WHERE technique != 'painting'
)
ORDER BY artist_id ASC;