-- Challenge 1 - Most Profiting Authors

-- Step 1: Calculate the royalty of each sale for each author and the advance for each author and publication

SELECT titles.title_id as 'Title_ID', titleauthor.au_id AS 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100) AS 'advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS 'sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON titles.title_id = sales.title_id
ORDER BY titles.title_id;



-- Step 2: Aggregate the total royalties for each title and author

SELECT Title_ID, Author_ID, SUM(sales_royalty)
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id AS 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100) AS 'advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS 'sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON titles.title_id = sales.title_id
ORDER BY titles.title_id) summary
GROUP BY Title_ID, Author_ID
ORDER BY Title_ID;



-- Step 3: Calculate the total profits of each author

SELECT Author_ID, advance + total_royalty AS 'total_profit'
FROM (
SELECT Title_ID, Author_ID, SUM(sales_royalty) AS 'total_royalty', advance
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id AS 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100) AS 'advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS 'sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON titles.title_id = sales.title_id
ORDER BY titles.title_id) summary
GROUP BY Author_ID
ORDER BY Author_ID) summary2;
LIMIT 3;



-- Challenge 2 - Alternative Solution

CREATE TEMPORARY TABLE temporary_table
SELECT Author_ID, advance + total_royalty AS 'total_profit'
FROM (
SELECT Title_ID, Author_ID, SUM(sales_royalty) AS 'total_royalty', advance
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id AS 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100) AS 'advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS 'sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON titles.title_id = sales.title_id
ORDER BY titles.title_id) summary
GROUP BY Author_ID
ORDER BY Author_ID) summary2
LIMIT 3;



-- Challenge 3

CREATE TABLE most_profiting_authors_leon
SELECT Author_ID AS 'Author ID', advance + total_royalty AS 'Profits'
FROM (
SELECT Title_ID, Author_ID, SUM(sales_royalty) AS 'total_royalty', advance
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id AS 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100) AS 'advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS 'sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON titles.title_id = sales.title_id
ORDER BY titles.title_id) summary
GROUP BY 1, 2
ORDER BY 1) summary2
LIMIT 3;