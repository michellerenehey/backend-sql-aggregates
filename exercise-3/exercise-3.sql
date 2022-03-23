-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT
	country,
	AVG(amount)
FROM
	country
LEFT JOIN
	city
ON
	country.country_id = city.country_id
LEFT JOIN
	address
ON
	city.city_id = address.city_id
LEFT JOIN
	customer
ON
	address.address_id = customer.address_id
INNER JOIN
	payment
ON
	customer.customer_id = payment.customer_id
GROUP BY
	country
ORDER BY 
	avg DESC
LIMIT   
    10;