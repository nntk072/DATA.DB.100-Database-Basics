-- h6t10
-- Long Nguyen

-- Make a query that for each artist retrieves the ID, first and last name, and the number of works they have made, and the number of exhibitions in which the works have been exhibited.
-- Sort the result rows in ascending order by artist ID.

-- artist_id        first_name            last_name        created_artwork  exhibitions
-- ---------------  --------------------  ---------------  ---------------  ---------------
-- 1                Leonardo              da Vinci         3                2
-- 2                Sandro                Robotticelli     1                2
-- 3                Nichelangelo          Buonarroti       2                0
-- 4                Salvador              Tali             1                2
-- 5                Fida                  Kahlo            0                0

SELECT artist.artist_id,
       first_name,
       last_name,
       Count(DISTINCT artwork.artwork_id) AS created_artwork,
       Count(DISTINCT exhibition_id)      AS exhibitions
FROM   artist
       LEFT OUTER JOIN artwork
                    ON artist.artist_id = artwork.artist_id
       LEFT OUTER JOIN displayed_at
                    ON artwork.artwork_id = displayed_at.artwork_id
GROUP  BY artist.artist_id,
          first_name,
          last_name
ORDER  BY artist.artist_id;
