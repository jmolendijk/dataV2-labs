SELECT a.au_id as "AUTHOR ID", a.au_lname as "LAST NAME",  a.au_fname AS "FIRST NAME", t.title as "TITLE", s.ord_num as "SALES", t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as "SALES ROYALTY", t.advance * ta.royaltyper / 100 as "ADVANCE", t.pub_id as "PUBLICATION"

from authors a
INNER JOIN titleauthor ta on a.au_id = ta.au_id
INNER JOIN titles t on ta.title_id = t.title_id
INNER JOIN sales s on s.title_id = t.title_id
INNER JOIN pub_info p on p.pub_id = t.pub_id;

/*
STEP 1 
*/


SELECT a.au_id as "AUTHOR ID", t.title as "TITLE", t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as "SALES ROYALTY", t.advance * ta.royaltyper / 100 as "ADVANCE"

from authors a
INNER JOIN titleauthor ta on a.au_id = ta.au_id
INNER JOIN titles t on ta.title_id = t.title_id
INNER JOIN sales s on s.title_id = t.title_id;

/*
Step 2
*/



from (
	SELECT a.au_id as "AUTHOR ID", t.title as "TITLE", t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as "SALES ROYALTY", t.advance * ta.royaltyper / 100 as "ADVANCE"

	from authors a
	INNER JOIN titleauthor ta on a.au_id = ta.au_id
	INNER JOIN titles t on ta.title_id = t.title_id
	INNER JOIN sales s on s.title_id = t.title_id;
