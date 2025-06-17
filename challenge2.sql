--4. Melakukan join director, genre ke table movies, 
-- dapatkan hanya 5 movie pertama saja

SELECT m.id, m.name as title, m.year, m.rankscore as rating, d.first_name as director_first_name, d.last_name as director_last_name, mg.genre FROM movies m
JOIN movies_directors md on md.movie_id = m.id
JOIN directors d on  d.id = md.director_id
JOIN movies_genres mg on mg.movie_id = m.id
LIMIT 50;

-- jika hanya ingin menampilkan 1 director dan 1 genre
SELECT DISTINCT ON (m.id) m.id, m.name AS title, m.year, m.rankscore AS rating, d.first_name AS director_first_name, d.last_name AS director_last_name, mg.genre FROM movies m
JOIN movies_directors md ON md.movie_id = m.id
JOIN directors d ON d.id = md.director_id
JOIN movies_genres mg ON mg.movie_id = m.id
ORDER BY m.id, mg.genre
LIMIT 50;
