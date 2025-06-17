--4. Melakukan join director, genre ke table movies, 
-- dapatkan hanya 5 movie pertama saja

SELECT m.id, m.name as title, m.year, m.rankscore as rating, d.first_name as director_first_name, d.last_name as director_last_name, mg.genre FROM movies m
JOIN movies_directors md on md.movie_id = m.id
JOIN directors d on  d.id = md.director_id
JOIN movies_genres mg on mg.movie_id = m.id
LIMIT 50;
