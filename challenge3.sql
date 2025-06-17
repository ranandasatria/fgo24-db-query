-- Active: 1750151033462@@127.0.0.1@5432@postgres

--6. Mendapatkan data director, dengan berapa genre yang di-direct
SELECT d.first_name as director_first_name, d.last_name as director_last_name, count(*) as genre_directed FROM directors d
JOIN directors_genres dg ON dg.director_id = d.id 
GROUP BY d.id

--7. Mendapatkan data actors yang memiliki role lebih dari 5
-- menggunakan subquery
SELECT * from (SELECT a.id, a.first_name as actor_first_name, a.last_name as actor_last_name, count(*) as role_count FROM actors a
JOIN roles r ON r.actor_id = a.id
GROUP BY a.id) 
where role_count > 5;

--8. Mendapatkan directors paling produktif
-- menggunakan count, order by, dan limit
SELECT d.first_name, d.last_name, count(*) as movie_count FROM directors d
JOIN movies_directors md ON md.director_id = d.id
GROUP BY d.id
ORDER BY movie_count DESC
LIMIT 1;


--9. Mendapatkan tahun tersibuk sepanjang masa 
SELECT movies.year as release_year, count(year) as total_movie from movies
GROUP BY year
ORDER BY total_movie DESC
LIMIT 1;


--10. Mendapatkan movies dengan genres yang dibuatkan menjadi 1 column (value dipisahkan dengan comma) dengan menggunakan string_agg

SELECT
 m.id, 
 m.name,
 string_agg (genre, ';') movie
FROM movies m
JOIN movies_genres mg ON mg.movie_id = m.id 
GROUP BY m.id

