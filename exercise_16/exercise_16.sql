-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
    
SELECT film.title, film.description, film.release_year, actor.actor_id, actor.first_name, actor.last_name, actor.last_update,
COALESCE(
        json_agg(to_jsonb(actor))
        filter (WHERE actor.actor_id IS NOT NULL), '[]') as actors
from film, actor
LEFT JOIN film_actor on film.film_id = film_actor.film_id
LEFT JOIN actor on film_actor.actor_id = actor.actor_id
GROUP BY film.title
WHERE 
  film.title = 'Airplane Sierra'