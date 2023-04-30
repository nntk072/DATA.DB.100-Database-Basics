-- h6t11
-- Long Nguyen

-- Make a query that retrieves the following information for each artwork:
-- ID,
-- name,
-- artist ID,
-- value,
-- the number of works by the same artist (the artist who made the work) and
-- the average value of works by the same artist (the artist who made the work).

-- Sort the result rows in ascending order by the number of artworks and the average value.

-- Tulostaulu / Result table:

-- artwork_id       artwork_name                    artist_id        value            artwork_count    avg_value
-- ---------------  ------------------------------  ---------------  ---------------  ---------------  ----------------
-- 4                The Birth of Venus              2                458.5            1                458.5
-- 7                The Persistence of Memory       4                550              1                550.0
-- 5                David                           3                754              2                1088.75
-- 6                The Last Judgement              3                1423.5           2                1088.75
-- 1                Mona Lisa                       1                850              3                365.666666666667
-- 2                Vitruvian Man                   1                180.5            3                365.666666666667
-- 3                Studies of Things               1                66.5             3                365.666666666667

SELECT artwork_id,
       artwork_name,
       artwork.artist_id,
       value,
       artwork_count,
       avg_value
FROM   artwork,
       (SELECT artist_id,
               Count(artist_id) AS artwork_count,
               Avg(value)       AS avg_value
        FROM   artwork
        GROUP  BY artist_id) AS a
WHERE  artwork.artist_id = a.artist_id
ORDER  BY artwork_count 
