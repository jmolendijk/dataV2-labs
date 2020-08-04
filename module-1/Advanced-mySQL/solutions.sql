-- Challenge 1 - Who Have Published What At Where?

SELECT authors.au_id as Authors_ID, authors.au_lname as Last_Name, authors.au_fname as First_Name, titles.title as Titles, publishers.pub_name as Publisher
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id;



-- Challenge 2 - Who Have Published How Many At Where?

SELECT authors.au_id as Authors_ID, authors.au_lname as Last_Name, authors.au_fname as First_Name, publishers.pub_name as Publisher, COUNT(titles.title) as Title_Count
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
ORDER BY Title_Count DESC;



-- Challenge 3 - Best Selling Authors

SELECT authors.au_id as Authors_ID, authors.au_lname as Last_Name, authors.au_fname as First_Name, SUM(qty) AS Total
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id
JOIN sales ON titleauthor.title_id = sales.title_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
ORDER BY Total DESC
LIMIT 3;



-- Challenge 4 - Best Selling Authors Ranking

SELECT authors.au_id as Authors_ID, authors.au_lname as Last_Name, authors.au_fname as First_Name, SUM(qty) AS Total
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id
JOIN sales ON titleauthor.title_id = sales.title_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
ORDER BY Total DESC;