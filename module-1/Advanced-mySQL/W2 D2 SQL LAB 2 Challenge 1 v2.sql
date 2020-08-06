#Step 1: Calculate the royalty of each sale for each author and the advance for each author and publication


SELECT titles.title_id, 
authors.au_id  , 
titles.advance , 
titleauthor.royaltyper,
titles.advance * titleauthor.royaltyper / 100 as "advance",
titles.price,
titles.royalty,
sales.qty,
titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as sales_royalty 


FROM authors
JOIN titleauthor on authors.au_id = titleauthor.au_id
JOIN titles on titleauthor.title_id = titles.title_id 
JOIN sales on titles.title_id = sales.title_id;

# Step 2 : Aggregate the total royalties for each title and author 

SELECT 
authors.au_id,  
titleauthor.title_id,
SUM(titles.advance * titleauthor.royaltyper / 100) as "advance",
SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as "total_royalty"

FROM authors
JOIN titleauthor on authors.au_id = titleauthor.au_id
JOIN titles on titleauthor.title_id = titles.title_id 
JOIN sales on titles.title_id = sales.title_id
GROUP BY authors.au_id,titleauthor.title_id;

# Step 3 : Calculate the total profits of each author

SELECT 
authors.au_id,  
SUM(titles.advance * titleauthor.royaltyper / 100) + SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100)  as total_profit

FROM authors
JOIN titleauthor on authors.au_id = titleauthor.au_id
JOIN titles on titleauthor.title_id = titles.title_id 
JOIN sales on titles.title_id = sales.title_id
GROUP BY authors.au_id;

# Step 4 :  create a permanent table named most_profiting_authors to hold the data about the most profiting authors. 

SELECT 
authors.au_id,  
SUM(titles.advance * titleauthor.royaltyper / 100) + SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100)  as total_profit

FROM authors
JOIN titleauthor on authors.au_id = titleauthor.au_id
JOIN titles on titleauthor.title_id = titles.title_id 
JOIN sales on titles.title_id = sales.title_id
GROUP BY authors.au_id;

# Create a table with 2 columns: au_id - Author ID  & profits - The profits of the author aggregating the advances and royalties

SELECT 
authors.au_id,  
SUM(titles.advance * titleauthor.royaltyper / 100) + SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100)  as total_profit

FROM authors
JOIN titleauthor on authors.au_id = titleauthor.au_id
JOIN titles on titleauthor.title_id = titles.title_id 
JOIN sales on titles.title_id = sales.title_id
GROUP BY authors.au_id;










