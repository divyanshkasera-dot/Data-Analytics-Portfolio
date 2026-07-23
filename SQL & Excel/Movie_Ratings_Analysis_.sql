CREATE DATABASE MovieDB;
USE MovieDB;

CREATE TABLE Movies(
movie_id INT PRIMARY KEY,
title VARCHAR(50),
genre VARCHAR(50),
release_year INT,
rating DECIMAL(3,1),
buget_musd INT,
revenue_musd INT,
duration_min INT,
director VARCHAR(50)	
);

-- Use SQL to extract average ratings by genre.

SELECT genre, AVG(rating) AS Average_Rating FROM Movies WHERE genre != 'Unknown' GROUP BY genre ORDER BY AVG(rating) DESC ;


-- CTE for top 10 rated movies.

WITH Top10Movies AS (
SELECT movie_id, title, genre, rating FROM Movies ORDER BY rating DESC LIMIT 10
) SELECT * FROM Top10Movies;











