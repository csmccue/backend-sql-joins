-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

SELECT city.city, SUM(payment.amount) as sum
from city
LEFT JOIN address on city.city_id = address.city_id
LEFT JOIN customer on address.address_id = customer.address_id
LEFT JOIN rental on customer.customer_id = rental.customer_id
LEFT JOIN payment on rental.rental_id = payment.rental_id
WHERE 
  payment.amount IS NOT NULL
GROUP BY city.city_id
ORDER BY sum DESC
LIMIT 10
;

-- WHERE
--   sum IS NOT NULL