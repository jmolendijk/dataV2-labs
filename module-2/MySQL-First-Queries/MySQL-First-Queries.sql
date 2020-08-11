-- 1. What are the different genres?
SELECT DISTINCT prime_genre
FROM app


-- 2. Which is the genre with the most apps rated?
SELECT MAX(rating_count_tot), prime_genre
FROM app
GROUP BY prime_genre
ORDER BY 1 DESC;


-- 3. Which is the genre with most apps?
SELECT COUNT(track_name), prime_genre
FROM app
GROUP BY prime_genre
ORDER BY 1 DESC;


-- 4. Which is the one with least?
SELECT COUNT(track_name), prime_genre
FROM app
GROUP BY prime_genre
ORDER BY 1 ASC;


-- 5. Find the top 10 apps most rated.
SELECT rating_count_tot, track_name FROM app
ORDER BY rating_count_tot DESC
LIMIT 10 ;


-- 6. Find the top 10 apps best rated by users.
SELECT user_rating, track_name FROM app
ORDER BY user_rating DESC
LIMIT 10 ;


-- 7. Take a look at the data you retrieved in question 5. Give some insights.
-- The first off the apps is Facebook in this list. The apps here are the popular apps in the App store.


-- 8. Take a look at the data you retrieved in question 6. Give some insights.
-- The apps in this list are the ones who are rated the best by the user.


-- 9. Now compare the data from questions 5 and 6. What do you see?
-- They don't compare to the apps in the previous list because popularity and quality dont't always have something in common.


-- 10. How could you take the top 3 regarding both user ratings and number of votes?
-- Both answer give you a valid answer but it depends on how you see the questions. Example one gives you a better balance of the ratings and the amount of people who gave a rating. The second one focus more on the amount of ratings. Which you can see with Facebook with a lot of ratings but a score of 3,5.

SELECT track_name, MAX(user_rating), MAX(rating_count_tot)
FROM app
GROUP BY track_name
ORDER BY 2 DESC, 3 DESC
LIMIT 3;

SELECT track_name, MAX(rating_count_tot), MAX(user_rating)
FROM app
GROUP BY track_name
ORDER BY 2 DESC, 3 DESC
LIMIT 3;


-- 11. Do people care about the price of an app?
-- The result shows that people dont worry about price if the quility of the app is good.

SELECT track_name, price, user_rating
FROM app
ORDER BY user_rating DESC;