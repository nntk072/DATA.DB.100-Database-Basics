-- h4t2
-- Long Nguyen


-- Retrieve IDs, values, and creation years for artworks with a value of less than 50,000 and a creation year later than 1510.
-- Sort the output in ascending order by artwork ID.
SELECT artwork_id, value, year_created
FROM artwork
WHERE value < 50000 AND year_created > 1510
ORDER BY artwork_id ASC;