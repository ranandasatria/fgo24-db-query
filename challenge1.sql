-- 1. cari movie dengan tahun rilis lebih dari 2000
-- 2. mencari aktor dengan akhiran nama 's'

SELECT * FROM movies WHERE year > 2001;

SELECT * FROM actors WHERE last_name ilike '%s';