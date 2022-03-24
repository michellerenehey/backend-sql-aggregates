-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

SELECT
	city,
    SUM(amount)
FROM
	city
LEFT JOIN
	address
ON
	city.city_id = address.city_id
LEFT JOIN
	customer
ON
	customer.address_id = address.address_id
LEFT JOIN
	rental
ON
	rental.customer_id = customer.customer_id
INNER JOIN
	payment
ON
	payment.rental_id = rental.rental_id
GROUP BY
	city
ORDER BY
	sum DESC
LIMIT
	10;