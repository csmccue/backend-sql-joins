-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT country.country, AVG(payment.amount) as avg
from country
LEFT JOIN city on country.country_id = city.country_id
LEFT JOIN address on city.city_id = address.city_id
LEFT JOIN customer on address.address_id = customer.address_id
LEFT JOIN rental on customer.customer_id = rental.customer_id
LEFT JOIN payment on rental.rental_id = payment.rental_id
WHERE
  payment.amount IS NOT NULL
  GROUP BY country.country_id
ORDER BY avg DESC
LIMIT 10
;