SELECT title, pub_name
FROM publishers p
INNER JOIN titles t
on p.pub_id = t.pub_id;

SELECT pub_name, COUNT(title_id) AS Titles
FROM publishers  
INNER JOIN titles
on publishers.pub_id = titles.pub_id
GROUP BY pub_name;

SELECT a.au_id, au_lname, au_fname, COUNT(title_id) AS Titles
FROM authors a
INNER JOIN titleauthor t
on a.au_id = t.au_id
GROUP BY a.au_id, au_lname, au_fname
ORDER BY COUNT(title_id) DESC
LIMIT 3;

SELECT a.au_id, au_lname, au_fname, COUNT(title_id) AS Titles
FROM authors a
LEFT JOIN titleauthor t
on a.au_id = t.au_id
GROUP BY a.au_id, au_lname, au_fname
ORDER BY COUNT(title_id) DESC;



