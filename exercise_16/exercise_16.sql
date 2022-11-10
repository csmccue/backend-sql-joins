-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
    
SELECT film.title, film.description, film.release_year
from film
WHERE 
  film.title = 'Airplane Sierra'
  ;