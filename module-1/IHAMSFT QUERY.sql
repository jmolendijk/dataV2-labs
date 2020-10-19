select DISTINCT prime_genre from app;

SELECT count(*), prime_genre from app
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY count(*) DESC;

SELECT count(*), prime_genre from app
GROUP BY prime_genre
ORDER BY count(*) DESC;

SELECT count(*), prime_genre from app
GROUP BY prime_genre
ORDER BY count(*) ASC;

SELECT rating_count_tot, track_name from app
GROUP BY track_name, rating_count_tot
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT user_rating, track_name from app
GROUP BY track_name, user_rating
ORDER BY user_rating DESC
LIMIT 10;

/* Facebook is the most rated app, and so on you see the other 9 most rated apps */

/* All these apps have a rating of 5, so probably it would make more sense to look further and see if there are more apps with this rating */\

/* Probably, the apps with a lower amount of ratings have a higher rating, as there are not the same apps in both lists */

/* Do people care about the price? probably look at downloads versus price */;


SELECT track_name, user_rating, rating_count_tot from app
GROUP BY track_name, user_rating, rating_count_tot
ORDER BY rating_count_tot DESC
LIMIT 3;











