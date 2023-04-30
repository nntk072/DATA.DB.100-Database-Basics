-- h6t8
-- Long Nguyen

-- Make a query that, for the most valuable work, retrieves the name, value, year of creation, and first and last name of the artist.

-- Result column names:
-- artwork_name | value | year_created | first_name | last_name

SELECT artwork_name, value, year_created, first_name, last_name
FROM artwork
INNER JOIN artist
ON artwork.artist_id = artist.artist_id
WHERE value = (SELECT MAX(value) FROM artwork);