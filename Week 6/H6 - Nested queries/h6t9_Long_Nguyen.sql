-- h6t9
-- Long Nguyen

-- Make a query that retrieves the techniques having artworks whose average value is higher than the average value for all artworks.

-- Result column names:
-- technique


SELECT DISTINCT technique
FROM artwork
WHERE artwork.value > (SELECT AVG(value) FROM artwork)