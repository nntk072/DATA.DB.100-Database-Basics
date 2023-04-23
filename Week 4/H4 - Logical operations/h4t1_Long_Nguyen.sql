-- h4t1
-- Long Nguyen

-- Retrieve IDs, values, and creation years for artworks with a value of less than 50,000 or a creation year later than 1510.
-- Sort the output in ascending order by artwork ID.
SELECT artwork_id, value, year_created
FROM artwork
WHERE value < 50000 OR year_created > 1510