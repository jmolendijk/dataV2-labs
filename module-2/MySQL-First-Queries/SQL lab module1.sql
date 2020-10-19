select * from app;


/* 1- Different genres */

SELECT prime_genre 
FROM app
GROUP BY prime_genre;


/* 2- Genre with most app rated */
select prime_genre,sum(rating_count_tot)
from app
group by prime_genre
order by sum(rating_count_tot) DESC
Limit 1;


/* 3- Genre with most apps */
select prime_genre,count(track_name)
from app
group by prime_genre
order by count(track_name) DESC
Limit 1;

/* 4- Genre with least apps */
select prime_genre,count(track_name)
from app
group by prime_genre
order by count(track_name) ASC
Limit 1;

/* 5- top 10 apps most rated */
select track_name,rating_count_tot
from app
order by rating_count_tot DESC
Limit 10;


select count(*) from app;

/* 6- Find the top 10 apps best rated by users.*/
select track_name,`user_rating`
from app
order by `user_rating` DESC
Limit 10;


select count(*) from app;

/*Take a look at the data you retrieved in question 5. Give some insights.
Top 2 apps are social media apps. People seem to rate more their social media applications.
Most rated seem to be social media, games and music

8. Take a look at the data you retrieved in question 6. Give some insights.
The top 10 best rated applications by users, share a user rate of 5 stars. Also, there is no outstanding mayority of genre in this sorting.

9. Now compare the data from questions 5 and 6. What do you see?
I see that the most rate aplications are not the best rated applications

10. How could you take the top 3 regarding both user ratings and number of votes?*/
select track_name,rating_count_tot,user_rating
from app
where user_rating = 5
order by rating_count_tot DESC
Limit 3;

/*11. Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
select track_name,rating_count_tot,user_rating,price
from app
where user_rating = 5
order by rating_count_tot DESC
Limit 10;

/* from the 10 most and best rated apps, we see that only 4 had a price to be paid. We can also see that the the price to be paid is very close to 1 for most of them*/
