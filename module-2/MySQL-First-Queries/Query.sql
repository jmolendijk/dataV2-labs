select * from app;

select count(*) from app;

/* 1.
What are the different genres?

Book
Business
Catalogs
Education
Entertainment
Finance
Food & Drink
Games
Health & Fitness
Lifestyle
Medical
Music
Navigation
News
Photo & Video
Productivity
Reference
Shopping
Social Networking
Sports
Travel
Utilities
Weather

*/

select prime_genre from app
group by prime_genre;

/*

2. Which is the genre with the most apps rated?

	Games
	
*/

select prime_genre from app
group by prime_genre
order by sum(rating_count_tot) desc;

/*
3. Which is the genre with most apps?

	Games
	
*/

select prime_genre, count(*) as id
from app
group by prime_genre
order by id desc;

/*
4. Which is the one with least?

	Catalogs
	
*/

select prime_genre, count(*) as id
from app
group by prime_genre
order by id asc;

/*

5. Find the top 10 apps most rated.

Facebook
Instagram
Clash of Clans
Temple Run
Pandora - Music & Radio
Pinterest
Bible
Candy Crush Saga
Spotify Music
Angry Birds

*/

select track_name from app
order by rating_count_tot desc
limit 10;

/*
6. Find the top 10 apps best rated by users.

:) Sudoku +
King of Dragon Pass
TurboScan��� Pro - document & receipt scanner: scan multiple pages and photos to PDF
Plants vs. Zombies
Learn to Speak Spanish Fast With MosaLingua
Plants vs. Zombies HD
The Photographer's Ephemeris
���Sudoku +
Flashlight ���
Infinity Blade

*/

select track_name from app
order by user_rating desc
limit 10;


/*

7. Take a look at the data you retrieved in question 5. Give some insights.

I had a look at the categories as I find the link between this data and the most rated app is relevant, here are my findings:

	- Facebook is the most rated social networking app.
	- Instagram is the most rated photo & video app.
	- Clash of clans is the most rated game app.
	- Music is the most rated photo & video app.
	- Bible is the most rated reference app.
*/

select track_name, prime_genre from app
order by rating_count_tot desc
limit 10;

/*

8. Take a look at the data you retrieved in question 6. Give some insights.

:) Sudoku + is the best rated app.

I've also looked at the number of users' votes  as I find the link between this data and the best rated app is relevant, here are my findings:

	- Learn to Speak Spanish Fast With MosaLingua only has 9 votes.

	- Plants vs. Zombies has the most votes within the best rated apps.

*/

select track_name, rating_count_tot, prime_genre from app
order by user_rating desc
limit 10;

/*


9. Now compare the data from questions 5 and 6. What do you see?

 	- None of the most rated apps is included in the best rated apps and inversely.
 
 	- The genres are more diverse in the most rated apps. 

*/

/*

10. How could you take the top 3 regarding both user ratings and number of votes?

*/

select track_name, user_rating, rating_count_tot from app
order by user_rating desc, rating_count_tot desc 
limit 3;

/*

11. Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

The parameters I find relevant to assess whether people cares about the price of the apps are:
	- the rating_count_tot which involves that an app was dowload many times and that people actually took the time to rate it;
	- the user_rating meaning that people actually liked the apps.
	
We see that the 10 most rated apps' prices are under 10€, and that these most rated apps' prices are under the mean of the prices' categories (36.934722222222234).

Additionally, we see that the 10 best rated apps' prices are under 10€, and that these best rated apps' prices app are under the mean of the prices' categories (36.934722222222234).

I would conclude that people cares about the price, knowing that the prices of the best rated and the most rated apps are under 10€ which could qualify as being affordable and, particularily, that these prices are under the  mean of the prices' categories (36.934722222222234). */

 select price from app
 group by price
 order by sum(rating_count_tot) desc
 limit 10;
 
 select avg( price) from app;
 
 select avg(distinct price) from app;
 
 select price from app
 group by price
 order by sum(user_rating) desc
 limit 10;
 
 
 




