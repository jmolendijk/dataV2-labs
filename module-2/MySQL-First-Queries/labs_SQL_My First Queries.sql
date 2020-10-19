
SELECT prime_genre from app
GROUP BY prime_genre;
select prime_genre,rating_count_tot from app
order by rating_count_tot DESC;

/* Which is the genre with most apps?
*/
SELECT prime_genre, COUNT(*) AS Records
FROM app 
GROUP BY prime_genre
order by Records DESC;
/* Which is the one with least?
*/
SELECT prime_genre, COUNT(*) AS Records
FROM app 
GROUP BY prime_genre
order by Records ASC;
/*  Find the top 10 apps most rated.
*/
select track_name, rating_count_tot from app
order by rating_count_tot DESC
limit 10;
/* Find the top 10 apps best rated by users.
*/
select track_name, user_rating from app
order by user_rating DESC
limit 10;
/* Facebook is the most rated app,
 Clash of clans is the most rated Game
 Pandora is the most listened to music and radio */
 
 /* Sudou is the most rated game and people love learning Spanish */
 
 /*Now compare the data from questions 5 and 6. What do you see?*/
 
 /*How could you take the top 3 regarding both user ratings and number of votes?*/
 select track_name, rating_count_tot, user_rating from app
 order by rating_count_tot desc, user_rating desc
 limit 3;
 /* Do people care about the price of an app? Do some queries, 
 comment why are you doing them and the results you retrieve. What is your conclusion? */
 select track_name, rating_count_tot, user_rating, price from app
 order by rating_count_tot desc
 limit 10;
/*people do care about price,the most rated apps are free and higest rated even though the user rating is not maximum. */ 