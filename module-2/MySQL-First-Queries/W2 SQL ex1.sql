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


-- INSIGHTS  about 5° TOP 10 most rated 

-- The two most rated concern Social media 
-- The apps related to leisure have a high level of interaction since people rate them.

SELECT rating_count_tot, track_name , prime_genre
FROM app
ORDER BY rating_count_tot DESC
lIMIT 10;



-- INSIGHTS  about 6) Top 10 apps best rated by users
-- GENRES in the TOP 10:
-- 90% of best ratings are for the genre Games 
-- 10% of best ratings and for the genre Fodd & Drink

-- Prices in the TOP 10:
-- 60% are free
-- 40% are payable with a low price thet is from .99 USD to 1.99 UDS

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
-- Yes the averrage price is low 1.72 USD
-- Only one App is 99.9 USD while the rest of the payable are between 9.99 and .99 USD


SELECT track_name , price, prime_genre
from app
WHERE price > 0
ORDER BY PRICE DESC;

SELECT avg(price)
from app;

