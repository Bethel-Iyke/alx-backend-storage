-- Script that lists all bands with Glam rock as their main style
-- ranked by their longevity with the following requirement
-- Import this table dump: metal_bands.sql.zip
-- Column names must be: band_name and lifespan (in years)
-- Use attributes formed and split for computing the lifespan
SELECT band_name, (COALESCE(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY COALESCE(split, 2022) - formed DESC;


