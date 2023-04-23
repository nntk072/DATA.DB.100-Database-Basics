-- h2t8
-- Long Nguyen 151317891
-- Retrieve the IDs and names of the works and the IDs, names and years of the exhibitions in which the work has been exhibited. The result table must also include works that have not been in any exhibition.
-- Sort the result rows in ascending order by artwork ID and exhibition ID.
-- Result columns:
-- artwork_id     |    artwork_name     |     exhibition_id   |   exhibition_name  |   year   
SELECT
    artwork.artwork_id,
    artwork.artwork_name,
    exhibition.exhibition_id,
    exhibition.exhibition_name,
    exhibition.year
FROM
    artwork
    LEFT JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
    LEFT JOIN exhibition ON displayed_at.exhibition_id = exhibition.exhibition_id
ORDER BY
    artwork.artwork_id,
    exhibition.exhibition_id;