-- 1
SELECT *
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC);
	
-- 2
SELECT *
FROM public.customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	WHERE amount > 6.99
);

-- 3
SELECT *
FROM film
WHERE film_id IN(
	SELECT film_id
	FROM inventory
	GROUP BY film_id
	HAVING COUNT(film_id) >= 5
);

-- 4
SELECT *
FROM country
WHERE country_id IN (
	SELECT country_id
	FROM city
	WHERE city LIKE 'D%'
);

-- 5
SELECT *
FROM film
WHERE language_id IN(
	SELECT language_id
	FROM language
	WHERE name = 'French'
);
