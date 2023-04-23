-- h4t4
-- Long Nguyen

-- Retrieve IDs and first names for those artists who have done both paintings and drawings. Remove duplicate rows.
-- Sort the output in ascending order by artist ID.

SELECT DISTINCT artist_id, first_name
FROM artist
WHERE artist_id IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'painting'
)
AND artist_id IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'drawing'
)
ORDER BY artist_id ASC;

-- Or another method
SELECT artist.artist_id,
       first_name
FROM   artist,
       artwork
WHERE  artist.artist_id = artwork.artist_id
       AND technique = 'painting'
INTERSECT
SELECT artist.artist_id,
       first_name
FROM   artist,
       artwork
WHERE  artist.artist_id = artwork.artist_id
       AND technique = 'drawing' 
