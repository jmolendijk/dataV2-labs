#Step One 

SELECT titles.title_id as 'Title ID', titleauthor.au_id as 'Author ID', ROUND(titles.advance * titleauthor.royaltyper / 100, 2) as 'Advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2) as 'Sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales 
ON titles.title_id = sales.title_id
ORDER BY 1;


-- Creating the temporary table
-- I wasn't able to see this table between my tables. 

CREATE TEMPORARY TABLE step_one
SELECT titles.title_id as 'Title ID', titleauthor.au_id as 'Author ID', ROUND(titles.advance * titleauthor.royaltyper / 100, 2) as 'Advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2) as 'Sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales 
ON titles.title_id = sales.title_id
ORDER BY 1; 

#Step Two

SELECT Title_ID, Author_ID, SUM(Sales_royalty)
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id as 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100, 2) as 'Advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2) as 'Sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales 
ON titles.title_id = sales.title_id
ORDER BY 1) summary
GROUP BY 2, 1
ORDER BY 1; 

# When I run these query I know can see the sum (Sales_royalty) aka ("Aggregated royalties of each title for each author"). 
# I've interpretted the question that an Title_id can appear more than once but only can appear once per author. 


-- -- Creating the temporary table


CREATE TEMPORARY TABLE stepTwo 
SELECT Title_ID, Author_ID, SUM(Sales_royalty)
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id as 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100, 2) as 'Advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2) as 'Sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales 
ON titles.title_id = sales.title_id
ORDER BY 1) summary
GROUP BY 2, 1
ORDER BY 2; 



#Step 3 

SELECT Author_ID as 'Author ID', Advance + Total_royalty as "profits"
FROM (
SELECT Title_ID, Author_ID, SUM(Sales_royalty) as 'Total_royalty', Advance
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id as 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100, 2) as 'Advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2) as 'Sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales 
ON titles.title_id = sales.title_id
ORDER BY 1) summary
GROUP BY 1, 2
ORDER BY 1 ) summary_two
GROUP BY 1
ORDER BY 2 DESC

# I know that this solution is wrong but I can't GROUP by and I searched together with Léon through the internet for more than 2 hours and we also find that we need to change our settings. 
# https://tableplus.com/blog/2018/08/mysql-how-to-turn-off-only-full-group-by.html 
# Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'summary_two.Advance' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
# I have submitted arround (20u15) because I know need to departure to Amsterdam from Belgium. 


-- Creating temporary table: 

CREATE TEMPORARY TABLE stepThree 
SELECT Author_ID, Advance + Total_royalty as "Total_Profits"
FROM (
SELECT Title_ID, Author_ID, SUM(Sales_royalty) as 'Total_royalty', Advance
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id as 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100, 2) as 'Advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2) as 'Sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales 
ON titles.title_id = sales.title_id
ORDER BY 1) summary
GROUP BY 1, 2
ORDER BY 1 ) summary_two
ORDER BY 2 DESC


CREATE TABLE most_profiting_authors_bert
SELECT Author_ID as 'Author ID', Advance + Total_royalty as "profits"
FROM (
SELECT Title_ID, Author_ID, SUM(Sales_royalty) as 'Total_royalty', Advance
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id as 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100, 2) as 'Advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2) as 'Sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales 
ON titles.title_id = sales.title_id
ORDER BY 1) summary
GROUP BY 1, 2
ORDER BY 1 ) summary_two




/*-- $$$$$$$$$$$$$$$ ---- TRY OUT FOR GROUPING BY ON AUTHOR_ID 

SELECT summary_two.Title_ID, summary_two.Author_ID, summary_two.Advance + summary_two.Total_royalty as 'Total_Profits'
FROM (
SELECT Title_ID, Author_ID, SUM(Sales_royalty) as 'Total_royalty', Advance
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id as 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100, 2) as 'Advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2) as 'Sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales 
ON titles.title_id = sales.title_id
) summary
GROUP BY 1, 2
) summary_two


CREATE TEMPORARY TABLE bert 
SELECT Advance + Total_royalty AS 'TOTAL', Author_ID
FROM ( SELECT Title_ID, Author_ID, SUM(Sales_royalty) as 'Total_royalty', Advance
FROM (
SELECT titles.title_id as 'Title_ID', titleauthor.au_id as 'Author_ID', ROUND(titles.advance * titleauthor.royaltyper / 100, 2) as 'Advance', ROUND(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100, 2) as 'Sales_royalty'
FROM titles
LEFT JOIN titleauthor
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales 
ON titles.title_id = sales.title_id
) summary
GROUP BY 1, 2
) summary_two



SELECT Author_ID, TOTAL
FROM bert
LEFT JOIN titleauthor
ON bert.Author_ID = titleauthor.au_id
GROUP BY 1
*/
