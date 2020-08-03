
#1. What are the different genres?

SELECT DISTINCT prime_genre as 'genres'
FROM app; 

#2. Which is the genre with the most apps rated?

SELECT MAX(rating_count_tot) as 'total ratings', prime_genre as 'genres'
FROM app
GROUP BY prime_genre
ORDER BY 1 DESC;

#3. Which is the genre with most apps?

SELECT COUNT(track_name) as 'number', prime_genre as 'genre'
FROM app
GROUP BY prime_genre
order by 1 DESC;    

#4. Which is the one with least?

SELECT COUNT(track_name) as 'number', prime_genre as 'genre'
FROM app
GROUP BY prime_genre
order by 1 ASC; 

#5. Find the top 10 apps most rated.

SELECT rating_count_tot 'Total Ratings', track_name as 'App name' 
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10 ; 

#6. Find the top 10 apps best rated by users.

SELECT user_rating as 'User rating', track_name as 'App name' 
FROM app
ORDER BY 1 DESC
LIMIT 10 ; 

#7. Take a look at the data you retrieved in question 5. Give some insights.
# - These ar the apps who has the most ratings from the user. 
# - On number 1 is Facebook who gets the most ratings by the users.
# - Here we look how many times an app gets an rating

#8. Take a look at the data you retrieved in question 6. Give some insights.

# - These are the highest rated apps by the user for all the versions. 
# - these are the apps who gets the best feedback from the customers if they review the app.
# - Here you only get the best valued apps in the store.

#9. Now compare the data from questions 5 and 6. What do you see?

# - Here (query 6) we talk more about the highest rating (quality). Here you see the apps with the best rating while query 5 shows an overview of the apps with the most ratings. (quantity)
# - a game can have a high ranking without a certain amount of reviews! 

#10. How could you take the top 3 regarding both user ratings and number of votes?


SELECT track_name, MAX(rating_count_tot), MAX(user_rating)
FROM app
GROUP BY track_name
ORDER BY 3 DESC, 2 DESC
LIMIT 3; 

Or 

SELECT track_name, MAX(rating_count_tot), MAX(user_rating)
FROM app
GROUP BY track_name
ORDER BY 2 DESC, 3 DESC
LIMIT 3; 

#It depends on how you look at the question. If the first selection is first on number of ratings or first on quality. That is the ultimate question. 

#11. Do people care about the price of an app?

#No people don’t care about the price but they just want the best working app. 

SELECT track_name, price, user_rating
FROM app
ORDER BY user_rating DESC;