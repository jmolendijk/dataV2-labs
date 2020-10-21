/* QUESTION 1 */

SELECT t.title_id, t.title, a.au_id, a.au_lname, a.au_fname, s.ord_num, t.advance * ta.royaltyper / 100 AS "ADVANCE", t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as "SALES ROYALTY"
FROM authors a
INNER JOIN titleauthor ta
on a.au_id = ta.au_id
INNER JOIN titles t 
on ta.title_id = t.title_id
INNER JOIN sales s 
on t.title_id = s.title_id;
	
	
