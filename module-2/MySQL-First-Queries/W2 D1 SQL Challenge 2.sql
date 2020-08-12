# Challenge 1 - Who Have Published What At Where?

SELECT authors.au_id as "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", titles.title AS "TITLE", publishers.pub_name AS "PUBLISHER", 
FROM authors 
JOIN titleauthor 
on authors.au_id = titleauthor.au_id
JOIN titles 
on titles.title_id = titleauthor.title_id
JOIN publishers 
on titles.pub_id = publishers.pub_id;


# Challenge 2 TITLE COUNTER 

SELECT authors.au_id as "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", titles.title AS "TITLE", publishers.pub_name, COUNT(titles.title) AS "TITLE COUNT"
FROM authors 
JOIN titleauthor 
on authors.au_id = titleauthor.au_id
JOIN titles 
on titles.title_id = titleauthor.title_id
JOIN publishers 
on titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname, titleauthor.title_id, titles.pub_id , publishers.pub_name;

# Challenge 3 BEST SELLING AUTHORS

SELECT authors.au_id as "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", SUM(qty) as "QUANTITY"
FROM authors 
JOIN titleauthor 
on authors.au_id = titleauthor.au_id
JOIN titles 
on titles.title_id = titleauthor.title_id
JOIN publishers 
on titles.pub_id = publishers.pub_id
JOIN sales
on sales.title_id = titleauthor.title_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY QUANTITY DESC
LIMIT 3;


# Challenge 4 Best Selling Authors Ranking ... in progress !

SELECT authors.au_id as "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", IFNULL(SUM(qty),0) as "TOTAL"

FROM authors 
LEFT JOIN titleauthor 
on authors.au_id = titleauthor.au_id
LEFT JOIN titles 
on titles.title_id = titleauthor.title_id
LEFT JOIN publishers 
on titles.pub_id = publishers.pub_id
LEFT JOIN sales
on sales.title_id = titleauthor.title_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY TOTAL DESC;

