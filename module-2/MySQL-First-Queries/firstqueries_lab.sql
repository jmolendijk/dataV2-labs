USE app;
select * from app;

-- 1. What are the different genres? --
SELECT prime_genre FROM app group by prime_genre;
select count(distinct(prime_genre)) from app;

-- 2. Which is the genre with the most apps rated? --
select prime_genre, count(rating_count_tot) from app
where rating_count_tot > 0
group by prime_genre
order by count(rating_count_tot) DESC
limit 1;

-- 3. Which is the genre with most apps? --
select prime_genre, count(id) as number_apps
from app
group by prime_genre
order by number_apps DESC
limit 1;

-- 4. Which is the one with least? --
select prime_genre, count(id) as number_apps
from app
group by prime_genre
order by number_apps ASC
limit 1;

-- 5. Find the top 10 apps most rated. --
select track_name, rating_count_tot from app
order by rating_count_tot DESC
limit 10;

-- 6. Find the top 10 apps best rated by users. --
select track_name, user_rating, rating_count_tot from app
where user_rating = 5
order by rating_count_tot DESC
limit 10;

-- 7. Take a look at the data you retrieved in question 5. Give some insights. --
select track_name, rating_count_tot, price, user_rating, prime_genre from app
order by rating_count_tot DESC
limit 10;

-- 8. Take a look at the data you retrieved in question 6. Give some insights. --
select track_name, user_rating, rating_count_tot, price, prime_genre from app
where user_rating = 5
order by rating_count_tot DESC
limit 10;
select track_name, rating_count_tot from app
order by rating_count_tot DESC
limit 24;

-- 10. How could you take the top 3 regarding both user ratings and number of votes? --
-- Way1 = Question #6 --
select track_name, rating_count_tot, user_rating from app
where user_rating = 5
order by rating_count_tot DESC
limit 3;

-- Way 2 --
select track_name, rating_count_tot, user_rating from app
where user_rating > 4
order by rating_count_tot DESC
limit 3;

/* 11. Do people care about the price of an app? 
Do some queries, comment why are you doing them and the results you retrieve. 
What is your conclusion? */

select track_name, price, rating_count_tot, user_rating from app
order by price DESC
limit 100;

-- How many free apps ? 4056 --
select count(id) from app
where price = 0;

-- How many paying apps ? 3141--
select count(id) from app
where price > 0;

-- Average price in appstore ? $1.73--
select avg(price) from app;

-- Average prince in paying apps ? $3.96--
select avg(price) from app
where price > 0;

-- Average ratings of free apps ? 19750--
select avg(rating_count_tot) from app
where price = 0;

-- Average ratings of paying apps ? 4038--
select avg(rating_count_tot) from app
where price > 0;

-- Are free apps better then paying apps ? --
select avg(user_rating) from app
where price = 0;
-- Average user rating fro free apps is 3.38 --
select avg(user_rating) from app
where price > 0;
-- Average user rating for paying apps is 3.72 --