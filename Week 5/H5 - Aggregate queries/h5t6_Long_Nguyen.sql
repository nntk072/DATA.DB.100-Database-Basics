-- h5t6
-- Long Nguyen

-- Retrieve the following information for all artworks: artwork ID, the artwork name and the number of exhibitions the artwork has been in.
-- Sort the result rows in ascending order by artwork ID.

-- Result column names:
-- artwork_id | artwork_name | exhibition_count

SELECT
    artwork.artwork_id,
    artwork.artwork_name,
    COUNT(exhibition.exhibition_id) AS exhibition_count
FROM
    artwork
    LEFT JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
    LEFT JOIN exhibition ON displayed_at.exhibition_id = exhibition.exhibition_id
GROUP BY
    artwork.artwork_id
ORDER BY
    artwork.artwork_id ASC;