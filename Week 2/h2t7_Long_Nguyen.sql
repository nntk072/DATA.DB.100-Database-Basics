-- h2t7
-- Long Nguyen
-- Retrieve artists' first and last names, IDs, and IDs and names of the works they have made. The result table should also include those artists who do not have any works in the database.
-- Sort the result rows in ascending order by artist ID and work ID.
-- Result columns:
-- first_name   |    last_name     |        artist_id    |    artwork_id    |   artwork_name   

SELECT
    artist.first_name,
    artist.last_name,
    artist.artist_id,
    artwork.artwork_id,
    artwork.artwork_name
FROM
    artist
    LEFT JOIN artwork ON artist.artist_id = artwork.artist_id