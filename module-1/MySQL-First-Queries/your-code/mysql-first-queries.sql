/*1. What are the different genres?*/
select distinct prime_genre 
from app;

/***2. Which is the genre with the most apps rated?***/
select prime_genre
		, count(*) as apps_rated
from app
where rating_count_tot>0
group by prime_genre
order by count(*) desc;

/***3. Which is the genre with most apps?***/
select prime_genre
		, count(*) as apps
from app
group by prime_genre
order by count(*) desc;

/***4. Which is the one with least?***/
select prime_genre
		, count(*) as apps
from app
group by prime_genre
order by count(*) asc;

/***5. Find the top 10 apps most rated.***/
select track_name
		, ver
		, prime_genre
		, rating_count_tot
from app
order by rating_count_tot desc
limit 10;

/***6. Find the top 10 apps best rated by users.***/
select id
		, track_name
        , ver
        , prime_genre
        , user_rating
from app
order by user_rating desc
limit 10;

/***10. How could you take the top 3 regarding both user ratings and number of votes?***/
select track_name
		, ver
		, prime_genre
        , rating_count_tot*user_rating as rating_weighted
from app
order by rating_count_tot*user_rating desc
limit 3;

/***11. Do people care about the price of an app?***/
select price
		, sum(rating_count_tot) as ratings
        , sum(rating_count_tot*user_rating)/sum(rating_count_tot) as user_rating_weighted
from app
group by price
order by sum(rating_count_tot) desc;
