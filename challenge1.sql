-- 1. mencari movie dengan tahun rilis lebih dari 2000
-- 2. mencari aktor dengan akhiran nama 's'
-- 3. mencari movie dengan rating diantara 5 dan 7 dan tahun rilis 2004 sampai 2006

SELECT * FROM movies WHERE year > 2000;

SELECT * FROM actors WHERE last_name ilike '%s';

SELECT * FROM movies WHERE rankscore BETWEEN 5 AND 7 AND year BETWEEN 2004 AND 2006 ORDER BY rankscore DESC;

