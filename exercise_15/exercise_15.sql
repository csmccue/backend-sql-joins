-- the total run time of all inventory items if they were all played back to back

SELECT SUM(film.length)
from film
LEFT JOIN inventory on film.film_id = inventory.film_id
WHERE
  inventory.film_id IS NOT NULL
