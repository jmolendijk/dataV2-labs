1. What are the different genres?

Games
Productivity
Weather
Shopping
Reference
Finance
Music
Utilities
Travel
Social Networking
Sports
Business
Health & Fitness
Entertainment
Photo & Video
Navigation
Education
Lifestyle
Food & Drink
News
Book
Medical
Catalogs

2. Which is the genre with the most apps rated? 

Games

3. Which is the genre with most apps?

Games

4. Which is the one with least?

Catalogs

5. Find the top 10 apps most rated.

2974676	Facebook
2161558	Instagram
2130805	Clash of Clans
1724546	Temple Run
1126879	Pandora - Music & Radio
1061624	Pinterest
985920	Bible
961794	Candy Crush Saga
878563	Spotify Music
824451	Angry Birds

6. Find the top 10 apps best rated by users.

Head Soccer	
Plants vs. Zombies	
Sniper 3D Assassin: Shoot to Kill Gun Game	
Geometry Dash Lite	
Infinity Blade	
Geometry Dash	
Domino's Pizza USA	
CSR Racing 
Pictoword: Fun 2 Pics Guess What's the Word Trivia	
Plants vs. Zombies 

7. Take a look at the data you retrieved in question 5. Give some insights.

The two most rated concern Social media 
The apps related to leisure have a high level of interaction since people rate them.

8. Take a look at the data you retrieved in question 6. Give some insights.

GENRES in the TOP 10:
-- 90% of best ratings are for the genre Games 
-- 10% of best ratings and for the genre Fodd & Drink


9. Now compare the data from questions 5 and 6. What do you see?

Most rated app are free
60% of Best rated apps are free


10. How could you take the top 3 regarding both user ratings and number of votes?

SELECT track_name, user_rating,rating_count_tot, price, prime_genre
FROM app
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;

11. Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

People do care about price of app
The averrage price is low 1.72 USD
Only one App is 99.9 USD while the rest of the payable are between 9.99 and .99 USD

SELECT track_name , price, prime_genre
from app
WHERE price > 0
ORDER BY PRICE DESC;

SELECT avg(price)
from app;
