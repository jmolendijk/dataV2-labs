select *
from app;

-- 1 What are the genres

select prime_genre
from app;

-- Genre with most app rated 

SELECT prime_genre, count(rating_count_tot)
FROM app
GROUP BY prime_genre ORDER BY count(rating_count_tot) DESC
LIMIT 1;

-- 3 Genre with most apps Games  : 3863   

SELECT COUNT(id), prime_genre
FROM app
GROUP BY prime_genre;

-- 4 Genre with least apps Catalogs : 10

SELECT COUNT(id), prime_genre
FROM app
GROUP BY prime_genre;

-- 5 Top 10 apps most rated


SELECT rating_count_tot, track_name
FROM app
ORDER BY rating_count_tot DESC
lIMIT 10;



-- 6 Top 10 apps best rated by users

SELECT track_name, user_rating,rating_count_tot
FROM app
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;


-- INSIGHTS  about 5 most rated 

SELECT rating_count_tot, track_name , prime_genre , price
FROM app
ORDER BY rating_count_tot DESC
lIMIT 10;



-- INSIGHTS  about 6 Top 10 apps best rated by users

SELECT track_name, user_rating,rating_count_tot, price, prime_genre
FROM app
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;


-- 9 TOP 3 based on user rating and number of votes

SELECT track_name, user_rating,rating_count_tot, price, prime_genre
FROM app
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;

-- People care about price of app? 

SELECT track_name , price, prime_genre
from app
WHERE price > 0
ORDER BY PRICE DESC;

SELECT avg(price)
from app;