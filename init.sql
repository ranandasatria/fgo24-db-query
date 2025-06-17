SELECT DISTINCT name, year FROM movies;

SELECT * from movies WHERE year = 2001;

SELECT * from movies WHERE year >= 2001;

SELECT * from movies WHERE year BETWEEN 2001 and 2003;

Select * FROM movies WHERE year = 2001 and rankscore > 5;

Select * FROM movies WHERE year = 2001 and rankscore is not null;

Select * FROM movies where name like 'Batman%'; --case sensitive, % di belakang untuk mencari movie dengan awalan batman di depan

Select * FROM movies where name ilike 'batman%'; --incase sensitive

Select * FROM movies where name ilike '%batman'; -- % di depan, untuk mencari movie dengan akhiran batman

Select * FROM movies where name ilike '%poo%'; -- %query% mencari movie dengan isian poo

Select * FROM movies where 
name ilike '%bat%' and rankscore > 5 
and year between 1990 and 2001 
order by rankscore DESC
limit 5
OFFSET 1; 




