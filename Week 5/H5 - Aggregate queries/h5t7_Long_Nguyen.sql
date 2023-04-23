-- h5t7
-- Long Nguyen

-- Retrieve the following information for works that have been featured in only one exhibition: work ID, name, and technique.
-- Sort the result rows in ascending order by artwork ID.

-- Result column names:
-- artwork_id | artwork_name | technique

SELECT
    artwork.artwork_id,
    artwork.artwork_name,
    artwork.technique
FROM
    artwork
    INNER JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
    INNER JOIN exhibition ON displayed_at.exhibition_id = exhibition.exhibition_id
GROUP BY
    artwork.artwork_id
HAVING
    COUNT(exhibition.exhibition_id) = 1
ORDER BY
    artwork.artwork_id ASC;