USE publications;

-- CHALLENGE 1 --

SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id;

SELECT count(titleauthor.title_id) as Records
FROM titleauthor;

-- Challenge 2 --
/* select titleauthor.au_id, count(titleauthor.title_id) as titlecount
from titleauthor
group by titleauthor.au_id; */

SELECT authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name , COUNT(titles.title) as titlecount
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
ORDER BY au_id DESC;

-- Challenge 3 --

/* SELECT authors.au_id, authors.au_lname, authors.au_fname
FROM authors;

select sales.title_id, sum(sales.qty)
from sales
group by sales.title_id
order by sum(sales.qty) DESC; */

SELECT authors.au_id, authors.au_lname, authors.au_fname, sum(sales.qty) as total
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN sales ON titles.title_id = sales.title_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY total DESC
limit 3;

-- Challenge 4 -- 

SELECT authors.au_id, authors.au_lname, authors.au_fname, sum(sales.qty) as total
FROM authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN sales ON titles.title_id = sales.title_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY total DESC;