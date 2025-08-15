USE sakila;

-- Display all available tables in the Sakila database

SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Titles of all films from the film table

SELECT title
FROM film;

--  List of languages used in films, with the column aliased as language from the language table

SELECT name AS language
FROM language;

-- List of first names of all employees from the staff table

SELECT first_name
FROM staff;

-- Retrieve unique release years.

SELECT DISTINCT release_year
FROM film;

-- 5.1 Determine the number of stores that the company has

SELECT COUNT(*) AS total_stores
FROM store;

-- 5.2 Determine the number of employees that the company has.

SELECT COUNT(*) AS total_employees
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(*) AS available_films
FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS rented_films
FROM rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(DISTINCT last_name) AS unique_last_names
FROM actor;

-- Retrieve the 10 longest films.

SELECT title,
	   length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT"

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT COUNT(*) AS behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';