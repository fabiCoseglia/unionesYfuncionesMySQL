-- MICRO 1 --
SELECT title, name
FROM series
INNER JOIN genres ON genre_id = genres.id;

SELECT title, first_name, last_name
FROM episodes
INNER JOIN actor_episode ON episodes.id = episode_id
INNER JOIN actors ON actor_id = actors.id;

-- MICRO 2--
SELECT  DISTINCT first_name, last_name
FROM movies
INNER JOIN actor_movie ON movies.id = actor_movie.movie_id
INNER JOIN actors ON actor_id = actors.id
WHERE movies.title like '%la guerra de las%';

-- MICRO 3 --
SELECT title,coalesce(name,'no tiene genero') as genero 
-- Le pasamos la columna como parametro, y lo que queremos que diga como string en caso de que: 
-- el valor de la fila, de la columna que pasamos como 1er parametro, sea nulo
-- explicación del uso de coalesce() -- 
FROM movies
LEFT JOIN genres ON genre_id = genres.id;

-- Micro 4 --
SELECT first_name
FROM actors
WHERE LENGTH(first_name)>6;

SELECT count(*) AS 'Total episodes'
FROM episodes;

SELECT series.title, count(*) as seasons
FROM seasons
INNER JOIN series ON series.id = seasons.serie_id
GROUP BY series.title
HAVING COUNT(*);






