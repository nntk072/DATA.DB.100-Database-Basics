-- h4t4
-- Long Nguyen 
-- For drawings and sculptures, retrieve the following information: the technique of the work, the name of the work, and the artist's last name.
-- Sort the output rows in ascending order by artwork technique and name.
SELECT technique, artwork_name, last_name
FROM artwork
JOIN artist ON artwork.artist_id = artist.artist_id
-- WHERE technique = 'drawing' OR technique = 'sculpture'
-- Or another solution for where
WHERE technique IN ('drawing', 'sculpture')
ORDER BY technique, artwork_name;