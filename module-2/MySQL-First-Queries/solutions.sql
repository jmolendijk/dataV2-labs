/*
Challenge 1
*/

select a.au_id as "AUTHOR ID", a.au_lname as "LAST NAME", a.au_fname AS "FIRST NAME", t.title AS "TITLE", p.pub_name as "PUBLISHER"
from authors a
INNER JOIN titleauthor ta on a.au_id = ta.au_id
INNER JOIN titles t on ta.title_id = t.title_id
INNER JOIN publishers p on t.pub_id = p.pub_id;

select count(*) from titleauthor;

/* 
Check: 25 record in title authors and 25 rows in the outupt. 
*/

/* 
Challenge 2
*/

select a.au_id as "AUTHOR ID", a.au_lname as "LAST NAME",  a.au_fname AS "FIRST NAME", p.pub_name as "PUBLISHER", count(t.title) AS "TITLE COUNT"
from authors a
INNER JOIN publications.titleauthor ta on a.au_id = ta.au_id
INNER JOIN publications.titles t on ta.title_id = t.title_id
INNER JOIN publications.publishers p on t.pub_id = p.pub_id
Group by a.au_id,  a.au_lname,  a.au_lname, p.pub_name;

/* 
Challenge 3
*/

select a.au_id as "AUTHOR ID", a.au_lname as "LAST NAME",  a.au_fname AS "FIRST NAME", s.qty as "TOTAL"
from authors a
INNER JOIN publications.titleauthor ta on a.au_id = ta.au_id
INNER JOIN publications.sales s on ta.title_id = s.title_id
order by total desc
limit 3;

/* 
Challenge 4
*/

select a.au_id as "AUTHOR ID", a.au_lname as "LAST NAME",  a.au_fname AS "FIRST NAME", ifnull(sum(s.qty),0) as "TOTAL"
from authors a
LEFT JOIN publications.titleauthor ta on a.au_id = ta.au_id
LEFT JOIN publications.sales s on ta.title_id = s.title_id
group by a.au_id, a.au_lname, a.au_fname
order by total desc;



