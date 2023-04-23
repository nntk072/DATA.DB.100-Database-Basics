-- h2t5
-- Long Nguyen
SELECT 
    exhibition.year,
    exhibition.exhibition_name,
    artist.first_name,
    artist.last_name,
    artwork.artwork_name
FROM 
    artist,
    artwork,
    displayed_at,
    exhibition
WHERE 
    artist.artist_id = artwork.artist_id
    AND artwork.artwork_id = displayed_at.artwork_id
    AND displayed_at.exhibition_id = exhibition.exhibition_id
ORDER BY
    exhibition.year,
    artist.last_name,
    artwork.artwork_name;