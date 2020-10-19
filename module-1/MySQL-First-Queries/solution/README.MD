![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. What are the different genres?**

There are these genres in the appstore:
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

**2. Which is the genre with the most apps rated?**

Games is the genre with the most apps rated, 3400

**3. Which is the genre with most apps?**

Games is the genre with the most apps, 3862

**4. Which is the one with least?**

Catalogs is the genre with the least apps, 10

**5. Find the top 10 apps most rated.**

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

**6. Find the top 10 apps best rated by users.**

Top 10 aps order by id are:

:) Sudoku +
King of Dragon Pass
TurboScan    Pro - document....
pages and photos to PDF
Plants vs. Zombies
Learn to Speak Spanish Fast With MosaLingua
Plants vs. Zombies HD
The Photographer's Ephemeris
   Sudoku +
Flashlight    
Infinity Blade

**7. Take a look at the data you retrieved in question 5. Give some insights.**

Most rated apps fall into such genres as Games, Social Networking, Photo & Video. There is a sharp drop in number of ratings between 4th and 5th place

**8. Take a look at the data you retrieved in question 6. Give some insights.**

Sorted by id, majority of best rated apps - 6 out of 10 - are from Games genre.

**9. Now compare the data from questions 5 and 6. What do you see?**

Games apps seem to be more popular when measuring on both number of rating and rating value


**10. How could you take the top 3 regarding both user ratings and number of votes?**

I suggest to weight (multiply) user_rating by rating_count_tot, which gives these three apps:

Facebook
Instagram
Clash of Clans

**11. Do people care about the price of an app?** 

There are few metrics we can use to answer this question.

- number of ratings: most likely correlates with number of downloads. The most ratings were left for free apps, and as the price start growing the number for ratings declines, which indicates that, yes, people care about the price

- the actual ratings left, based on weighted ratings - sum(rating_count_tot*user_rating)/sum(rating_count_tot). Based on this there is not much of a clear relationship. Higher prices apps tend to have slightly higher ratings, but it is not clear if the difference is significant.
