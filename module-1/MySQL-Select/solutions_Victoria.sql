-- Challenge 1
SELECT titleauthor.au_id, authors.au_lname, authors.au_fname, titles.title_id, title, titles.pub_id, pub_name
FROM titleauthor
JOIN titles
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON publishers.pub_id = titles.pub_id
JOIN authors
ON authors.au_id = titleauthor.au_id;

-- Challenge 2
SELECT authors.au_lname as "Last Name", authors.au_fname as "First Name", pub_name as "Publisher", count(*) as "Title Count"
FROM titleauthor
JOIN titles
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON publishers.pub_id = titles.pub_id
JOIN authors
ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id, publishers.pub_id
ORDER BY count(*) DESC;

-- Challenge 3
SELECT authors.au_id as "Author ID", authors.au_lname as "Last Name", authors.au_fname as "First Name", SUM(ytd_sales) as "Total"
FROM titleauthor
JOIN titles
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON publishers.pub_id = titles.pub_id
RIGHT JOIN authors
ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id
ORDER BY SUM(ytd_sales) DESC
LIMIT 3;

-- Challenge 4
SELECT authors.au_id as "Author ID", authors.au_lname as "Last Name", authors.au_fname as "First Name", SUM(ytd_sales) as "Total"
FROM titleauthor
JOIN titles
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON publishers.pub_id = titles.pub_id
RIGHT JOIN authors
ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id
ORDER BY SUM(ytd_sales) DESC;

