-- CHALLENGE 1
-- Step 1
SELECT titleauthor.title_id as 'Title ID', au_id as 'Author ID', titles.advance * titleauthor.royaltyper / 100 AS "Advance", titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS "Royalty"  
FROM sales
INNER JOIN publications.titleauthor ON sales.title_id = titleauthor.title_id
INNER JOIN publications.titles ON sales.title_id = titles.title_id;

-- Step 2
SELECT `Title ID`, summary.au_id as 'Author ID', Advance as 'Aggregated advance', SUM(Royalty) as 'Aggregated royalties'
FROM (
    SELECT titleauthor.title_id as 'Title ID', au_id, titles.advance * titleauthor.royaltyper / 100 AS "Advance", titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS "Royalty" 
FROM sales
INNER JOIN publications.titleauthor ON sales.title_id = titleauthor.title_id
INNER JOIN publications.titles ON sales.title_id = titles.title_id
) summary
GROUP BY au_id, `Title ID`;

-- Step 3
SELECT `Author ID`, SUM(`Aggregated advance`) + SUM(`Aggregated royalties`) as 'Profits'\
FROM (
SELECT `Title ID`, summary.au_id as 'Author ID', Advance as 'Aggregated advance', SUM(Royalty) as 'Aggregated royalties'
FROM (
    SELECT titleauthor.title_id as 'Title ID', au_id, titles.advance * titleauthor.royaltyper / 100 AS "Advance", titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS "Royalty" 
FROM sales
INNER JOIN publications.titleauthor ON sales.title_id = titleauthor.title_id
INNER JOIN publications.titles ON sales.title_id = titles.title_id
) summary
GROUP BY au_id, `Title ID`
) total
GROUP BY `Author ID`
ORDER BY Profits DESC
LIMIT 3;

-- CHALLENGE 2
DROP TABLE summary;

CREATE TEMPORARY TABLE publications.presummary
SELECT titleauthor.title_id as 'Title ID', au_id as 'Author ID', titles.advance * titleauthor.royaltyper / 100 AS "Advance", titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS "Royalty"  
FROM sales
INNER JOIN publications.titleauthor ON sales.title_id = titleauthor.title_id
INNER JOIN publications.titles ON sales.title_id = titles.title_id;

SELECT * FROM publications.presummary;

CREATE TEMPORARY TABLE publications.summary
SELECT `Title ID`, `Author ID`, MAX(Advance) as 'Aggregated advance', SUM(Royalty) as 'Aggregated royalties'
FROM publications.presummary
GROUP BY `Author ID`, `Title ID`;

SELECT * FROM publications.summary;

CREATE TEMPORARY TABLE publications.total
SELECT `Author ID`, SUM(`Aggregated advance`) + SUM(`Aggregated royalties`) as 'Profits'
FROM publications.summary
GROUP BY `Author ID`
ORDER BY Profits DESC
LIMIT 3;

SELECT * FROM publications.total;

-- CHALLENGE 3
CREATE TABLE publications.most_profiting_authors_victoria
SELECT `Author ID`, SUM(`Aggregated advance`) + SUM(`Aggregated royalties`) as 'Profits'
FROM publications.summary
GROUP BY `Author ID`
ORDER BY Profits DESC;