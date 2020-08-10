SELECT DISTINCT prime_genre
FROM app;

SELECT prime_genre, count(rating_count_tot) FROM app
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY count(rating_count_tot) DESC
LIMIT 1;

SELECT prime_genre, COUNT(*) AS Records
FROM app
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 3;

SELECT prime_genre, COUNT(*) AS Records
FROM app
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
LIMIT 3;

SELECT track_name, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating
FROM app
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot
FROM app
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;


SELECT track_name
FROM app
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

SELECT track_name
FROM app
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 3;

SELECT track_name, 
FROM app
WHERE price = 0
ORDER BY rating_count_tot DESC;

SELECT track_name, price, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC;
