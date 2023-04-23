-- h5t5
-- Long Nguyen

-- Retrieve the following information for all artists: artist ID and first and last name, as well as number of works, minimum value, and maximum value of works.
-- Sort the result rows in ascending order by artist ID.

-- Result column names:
-- artist_id | first_name | last_name | artwork_count | min_value | max_value
SELECT
    artist.artist_id,
    artist.first_name,
    artist.last_name,
    COUNT(artwork.artwork_id) AS artwork_count,
    MIN(artwork.value) AS min_value,
    MAX(artwork.value) AS max_value
FROM
    artist
    LEFT JOIN artwork ON artist.artist_id = artwork.artist_id
GROUP BY
    artist.artist_id
ORDER BY
    artist.artist_id ASC;
    
