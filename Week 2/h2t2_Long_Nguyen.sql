-- h2t2
-- Long Nguyen

-- Retrieve the following information for all artworks: id of the work, name of the work, artist’s first and last name and the year of creation of the work.
-- Sort the result rows in ascending order by artwork id.
-- artwork_id | artwork_name | first_name | last_name | year_created
SELECT artwork.artwork_id, artwork.artwork_name, artist.first_name, artist.last_name, year_created
FROM artist, artwork
WHERE artist.artist_id = artwork.artist_id
ORDER BY artwork.artwork_id ASC;