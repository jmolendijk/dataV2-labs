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

# Step 2 : Aggregate the total royalties for each title and author .... I couldn't figure out how to SUM(sales_royalty)


# Step 3 : Calculate the total profits of each author

# Step 4 :  create a permanent table named most_profiting_authors to hold the data about the most profiting authors. 
# The table should have 2 columns: au_id - Author ID  & profits - The profits of the author aggregating the advances and royalties












