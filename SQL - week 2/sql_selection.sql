
#Before I started this lab I just took a piece of paper and get a visual on which tabels could join each other.



#Challenge One


SELECT authors.au_id as 'Author ID', authors.au_lname as 'Last Name', authors.au_fname as 'First Name', titles.title as 'Title', publishers.pub_name as 'Publisher'
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id
ORDER BY 1 ASC

# Challenge Two: 

SELECT authors.au_id as "Authors ID", authors.au_lname as "Last Name", authors.au_fname as "First Name", publishers.pub_name "Publisher name", count(*) as "Title Count"
FROM authors
JOIN titleauthor
ON authors.au_id = titleauthor.au_id
JOIN titles
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, publishers.pub_id 
ORDER BY COUNT(*) DESC, publishers.pub_name ASC; 

# Challenge Three: 

SELECT authors.au_id as 'Author ID', authors.au_lname as 'Last Name', authors.au_fname as 'First Name', SUM(titles.ytd_sales) as 'Total'
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id
ORDER BY 4 DESC
LIMIT 3


# Challenge Four: 


SELECT authors.au_id as 'Author ID', authors.au_lname as 'Last Name', authors.au_fname as 'First Name', SUM(titles.ytd_sales) as 'Total'
FROM authors
LEFT JOIN titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers
ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id
ORDER BY 4 DESC


# —> I also made a query to look how many authors there were: 

SELECT DISTINCT COUNT(au_id) as 'Total authors'
FROM authors