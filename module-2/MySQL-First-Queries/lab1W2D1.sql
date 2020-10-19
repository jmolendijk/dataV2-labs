-- 1. What are the different genres?
SELECT distinct prime_genre FROM app;

-- 2. Which is the genre with the most apps rated?
select prime_genre, sum(rating_count_tot)
from app
group by prime_genre
order by sum(rating_count_tot) desc
limit 1;

-- 3. Which is the genre with most apps?
select prime_genre, count(track_name)
from app
group by prime_genre
order by count(track_name) desc
limit 1;

-- 4. Which is the one with least?
select prime_genre, count(track_name)
from app
group by prime_genre
order by count(track_name) asc
limit 1;

-- 5. Find the top 10 apps most rated.
select track_name, rating_count_tot
from app
order by rating_count_tot desc
limit 10;

-- 6. Find the top 10 apps best rated by users.
select track_name, user_rating
from app
order by user_rating desc
limit 10;
/*
There are actually 492 apps rated at 5 by users so top 10 is not really representative.
*/
select count(user_rating)
from app
where user_rating = 5;

-- 7. Take a look at the data you retrieved in question 5. Give some insights.
/*
The most popular apps are social media - Facebook and Instagram.
Spotify is NOT the most popular music app.
*/

-- 8. Take a look at the data you retrieved in question 6. Give some insights.
/*
Top 10 here is not representative as there are 492 apps in total rated at 5.
The best rated apps are random in terms of genre.
*/

-- 9. Now compare the data from questions 5 and 6. What do you see?
/*
Results in query 5 and 6 are not intersecting. It means that the most popular doesn't mean the best and vice versa.
*/

-- 10. How could you take the top 3 regarding both user ratings and number of votes?
select track_name, user_rating, rating_count_tot
from app
order by user_rating desc, rating_count_tot desc
limit 3;
/*
Order of fields used in 'order by' matters so you always need to keep in mind priorities of your request.
*/

-- 11. Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
select price, sum(rating_count_tot)
from app
group by price
order by sum(rating_count_tot) desc
limit 10;
/*
We don't have information about amount of downloads so we use amount of ratings as a best estimation of amount of downloads.
There is a positive correlation between amount of ratings received and a price of app which can be interpreted as that people care about the price.
*/

select * from app;