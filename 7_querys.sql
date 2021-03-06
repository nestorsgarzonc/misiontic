SELECT title
from peliculas
ORDER BY title ASC;
SELECT title,
    summary,
    release_year
from peliculas
WHERE release_year > 2000 and event_type=0;
SELECT title
FROM peliculas
WHERE director_id = 'Vincent Ward' and event_type=0;
SELECT movie_id as peliculas
FROM projections
WHERE user_id = 'lucky' order by movie_id ;
SELECT us.user_id,
    us.first_name,
    us.last_name
from users as us,
    projections as proj
where us.user_id = proj.user_id
    AND movie_id = 'Interestelar'
order by us.user_id;
SELECT COUNT(*)
from peliculas
WHERE release_year > 2000 and event_type=0;