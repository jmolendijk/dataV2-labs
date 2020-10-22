# 1. What are the different genres?
select distinct(prime_genre) from app;

#2. Which is the genre with the most apps rated?
select count(*), prime_genre from app where rating_count_tot > 0 group by prime_genre order by count(*) desc limit 1;

#3. Which is the genre with most apps?
select count(*), prime_genre from app where group by prime_genre order by count(*) desc limit 1;

#4. Which is the one with least?
select count(*), prime_genre from app where group by prime_genre order by count(*) asc limit 1;

#5. Find the top 10 apps most rated.
select track_name from app order by rating_count_tot desc limit 10;

#6. Find the top 10 apps best rated by users.
select track_name from app order by user_rating desc limit 10;

#10. How could you take the top 3 regarding both user ratings and number of votes?
select track_name, (rating_count_tot * user_rating) as combined_rating from app order by combined_rating desc limit 3;

#11.Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
select user_rating, avg(price) from app group by user_rating order by user_rating desc;

