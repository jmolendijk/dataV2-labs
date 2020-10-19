select * from app;

select prime_genre from app;

select sum(rating_count_tot), prime_genre from app
group by prime_genre
order by sum(rating_count_tot) DESC
limit 1;

select count(prime_genre), prime_genre from app
group by prime_genre
order by count(prime_genre) DESC
limit 1;

select count(prime_genre), prime_genre from app
group by prime_genre
order by count(prime_genre) ASC
limit 1;

select track_name, rating_count_tot from app
order by rating_count_tot desc
limit 10;

select track_name, user_rating from app
order by user_rating desc
limit 10;

--Q7:Social media apps are the most popular before games.
--Q7:Pandora music & radio app has been rated more than Spotify, which compared to the market share is odd.

--Q8: A lot of apps have the best rating, so the top 10 is not representative.
--Q8: Sudoko is in the list multiple times.

--Q9: It is not because an app has been rated a lot that it also has a good rating.
--Q9: The more an app has been rated the more reliable the user rating becomes.

select track_name, rating_count_tot, user_rating from app
where user_rating = 5
order by rating_count_tot DESC
limit 3;

--Q11:
select avg(price) from app;

select track_name, rating_count_tot, user_rating, price from app
where user_rating = 5
order by rating_count_tot DESC
limit 10;

--In this query I took the top 10 user rating & total rating count as parameters to evaluate whether
--apps in general are good. Out of the top 10 apps only 4 are priced and the price itself is relatively low.
--Considering the average price of an app is 1.73.
 

