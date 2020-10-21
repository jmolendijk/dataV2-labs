/* QUESTION 1 */

SELECT t.title_id, t.title, a.au_id, a.au_lname, a.au_fname, s.ord_num, t.advance * ta.royaltyper / 100 AS "ADVANCE", t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as "SALES ROYALTY"
FROM authors a
INNER JOIN titleauthor ta
on a.au_id = ta.au_id
INNER JOIN titles t 
on ta.title_id = t.title_id
INNER JOIN sales s 
on t.title_id = s.title_id;
	
/* step 2 */

CREATE TEMPORARY TABLE royalties1
SELECT t.title_id, t.title, a.au_id, a.au_lname, a.au_fname, s.ord_num, t.advance * ta.royaltyper / 100 AS ADVANCE, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as SALES_ROYALTY
FROM authors a
INNER JOIN titleauthor ta
on a.au_id = ta.au_id
INNER JOIN titles t 
on ta.title_id = t.title_id
INNER JOIN sales s 
on t.title_id = s.title_id;

SELECT au_id, title_id, SUM(SALES_ROYALTY) as SUM_SALES_ROYALTY
FROM royalties1
GROUP BY au_id, title_id
LIMIT 3;

/* SELECT au_id, title_id, SUM(SALES_ROYALTY), ADVANCE
FROM royalties1
GROUP BY au_id, title_id, ADVANCE
ORDER BY SUM(SALES_ROYALTY) DESC; */

/* STEP 3 */

CREATE TEMPORARY TABLE royalties3
SELECT au_id, title_id, ADVANCE, SUM(SALES_ROYALTY) as SUM_SALES_ROYALTY
FROM royalties1
GROUP BY au_id, title_id, ADVANCE;

SELECT au_id, SUM(SUM_SALES_ROYALTY + ADVANCE) AS PROFIT
FROM royalties3
GROUP BY au_id
ORDER BY PROFIT DESC
LIMIT 3;

/* SELECT au_id, SUM(SUM_SALES_ROYALTY) + ADVANCE AS PROFIT
FROM royalties3
GROUP BY au_id, ADVANCE
ORDER BY PROFIT DESC
LIMIT 3; */

/* CHALLENGE 2  */

SELECT au_id, SUM(SUM_SALES_ROYALTY + ADVANCE) AS PROFIT

FROM 
	(SELECT au_id, title_id, ADVANCE, SUM(SALES_ROYALTY) as SUM_SALES_ROYALTY
	FROM (SELECT t.title_id, t.title, a.au_id, a.au_lname, a.au_fname, s.ord_num, t.advance * ta.royaltyper / 	100 AS 	ADVANCE, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as SALES_ROYALTY
	FROM authors a
	INNER JOIN titleauthor ta
	on a.au_id = ta.au_id
	INNER JOIN titles t 
	on ta.title_id = t.title_id
	INNER JOIN sales s 
	on t.title_id = s.title_id
	) royalties1
	GROUP BY au_id, title_id, ADVANCE
	) royalties3
GROUP BY au_id
ORDER BY PROFIT DESC
LIMIT 3;

/* CHALLENGE 3 */

CREATE TABLE most_profiting_authors_michelle (
	au_id VARCHAR(20),
	profits INT
);

INSERT INTO most_profiting_authors_michelle
SELECT au_id, SUM(SUM_SALES_ROYALTY + ADVANCE) AS PROFIT
FROM royalties3
GROUP BY au_id
ORDER BY PROFIT DESC
LIMIT 3;










