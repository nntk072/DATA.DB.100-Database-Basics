-- h2t4
-- Long Nguyen
--Retrieve the following information for artworks that have been exhibited in the location called  Museum of Modern Art: id, name and technique of the artwork.
-- artwork_id   |    artwork_name     |     technique   
SELECT
    artwork.artwork_id,
    artwork.artwork_name,
    artwork.technique
FROM
    artist,
    artwork,
    exhibition,
    displayed_at
WHERE 
    artist.artist_id = artwork.artist_id
    AND
    artwork.artwork_id = displayed_at.artwork_id
    AND
    displayed_at.exhibition_id = exhibition.exhibition_id
    AND
    exhibition.location = 'Museum of Modern Art'
ORDER BY
    artwork.artwork_id ASC;
