## 1. What are the different genres?

#### select distinct(prime_genre) from app;
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


## 2. Which is the genre with the most apps rated?
#### select count(*), prime_genre from app where rating_count_tot > 0 group by prime_genre order by count(*) desc limit 1;   
    3400	Games


## 3. Which is the genre with most apps?
#### select count(*), prime_genre from app where (rating_count_tot > 0 or rating_count_tot <= 0) group by prime_genre order by count(*) desc limit 1;
    3862	Games


## 4. Which is the one with least?**
#### select count(*), prime_genre from app where ((rating_count_tot > 0) or (rating_count_tot <= 0)) group by prime_genre order by count(*) asc limit 1;
    10	Catalogs


## 5. Find the top 10 apps most rated.**
#### select track_name from app order by rating_count_tot desc limit 10;
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


## 6. Find the top 10 apps best rated by users.**
#### select track_name from app order by user_rating desc limit 10;
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


## 7. Take a look at the data you retrieved in question 5. Give some insights.
    The data that I received from question 5 is the top 10 app names which have the highest rating count in total. - most popular apps


## 8. Take a look at the data you retrieved in question 6. Give some insights.
    The data I retrieved from question 6 is the top 10 app names which have the most highest ratings given by users. - apps with best experience

## 9. Now compare the data from questions 5 and 6. What do you see?
    The data from 5 and 6 are completely different. In one data set we are retrieving the top 10 apps with highest rating_count_tot and in other data set we are retrieving the top 10 user_rating apps.



## 10. How could you take the top 3 regarding both user ratings and number of votes? select user_rating, rating_count_tot from app order by (user_rating and rating_count_tot) desc limit 3

| track_name | combined_rating
|:--- |:---
| Facebook| 10411366
| Instagram| 9727011
| Clash of Clans| 9588622.5

## 11. Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
|user_rating | avg(price)
|:--- |:---
| 5| 1.6455894308943124
| 4.5| 1.802110401802427
| 4| 2.209864698646936
| 3.5| 1.757435897435901
| 3| 1.288067885117496
| 2.5| 1.1032142857142866
| 2| 1.155754716981131
| 1.5| 1.2089285714285716
| 1| 1.9265909090909084
| 0| 1.0801291711517784