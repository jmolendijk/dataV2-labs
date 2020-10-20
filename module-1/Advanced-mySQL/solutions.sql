select titles.title_id as "Title_id", authors.au_id as 'Author_id', ((titles.advance) * (titleauthor.royaltyper / 100)) as advance, 
((titles.price) * (sales.qty) * (titles.royalty / 100) * (titleauthor.royaltyper / 100)) as sales_royalty 
from publications.authors authors
inner join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id 
inner join publications.titles titles
on titles.title_id = titleauthor.title_id 
inner join publications.sales sales
on titles.title_id = sales.title_id;

select Title_id, Author_id, SUM(sales_royalty) 
from(select titles.title_id as "Title_id", authors.au_id as 'Author_id', ((titles.advance) * (titleauthor.royaltyper / 100)) as advance, 
((titles.price) * (sales.qty) * (titles.royalty / 100) * (titleauthor.royaltyper / 100)) as sales_royalty 
from publications.authors authors
inner join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id 
inner join publications.titles titles
on titles.title_id = titleauthor.title_id 
inner join publications.sales sales
on titles.title_id = sales.title_id) summary
group by Author_id, Title_id;


select Title_id, Author_id, SUM(profit)
from(select titles.title_id as "Title_id", authors.au_id as 'Author_id', ((titles.advance) * (titleauthor.royaltyper / 100))  + ((titles.price) * (sales.qty) * (titles.royalty / 100) * (titleauthor.royaltyper / 100)) as profit 
from publications.authors authors
inner join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id 
inner join publications.titles titles
on titles.title_id = titleauthor.title_id 
inner join publications.sales sales
on titles.title_id = sales.title_id) summary
group by Author_id, Title_id;

create temporary table advance_royalty_table 
select titles.title_id as "Title_id", authors.au_id as 'Author_id', ((titles.advance) * (titleauthor.royaltyper / 100)) as advance, 
((titles.price) * (sales.qty) * (titles.royalty / 100) * (titleauthor.royaltyper / 100)) as sales_royalty 
from publications.authors authors
inner join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id 
inner join publications.titles titles
on titles.title_id = titleauthor.title_id 
inner join publications.sales sales
on titles.title_id = sales.title_id;

select * from advance_royalty_table;

create temporary table aggregate_total_royalties
select Title_id, Author_id, SUM(sales_royalty) 
from(select titles.title_id as "Title_id", authors.au_id as 'Author_id', ((titles.advance) * (titleauthor.royaltyper / 100)) as advance, 
((titles.price) * (sales.qty) * (titles.royalty / 100) * (titleauthor.royaltyper / 100)) as sales_royalty 
from publications.authors authors
inner join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id 
inner join publications.titles titles
on titles.title_id = titleauthor.title_id 
inner join publications.sales sales
on titles.title_id = sales.title_id) summary
group by Author_id, Title_id;

select * from aggregate_total_royalties;

create temporary table total_profits
select Title_id, Author_id, SUM(profit)
from(select titles.title_id as "Title_id", authors.au_id as 'Author_id', ((titles.advance) * (titleauthor.royaltyper / 100))  + ((titles.price) * (sales.qty) * (titles.royalty / 100) * (titleauthor.royaltyper / 100)) as profit 
from publications.authors authors
inner join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id 
inner join publications.titles titles
on titles.title_id = titleauthor.title_id 
inner join publications.sales sales
on titles.title_id = sales.title_id) summary
group by Author_id, Title_id;

select * from total_profits;


create table most_profiting_authors_iswetha
select Author_id, SUM(profit)
from(select authors.au_id as 'Author_id', ((titles.advance) * (titleauthor.royaltyper / 100))  + ((titles.price) * (sales.qty) * (titles.royalty / 100) * (titleauthor.royaltyper / 100)) as profit 
from publications.authors authors
inner join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id 
inner join publications.titles titles
on titles.title_id = titleauthor.title_id 
inner join publications.sales sales
on titles.title_id = sales.title_id) summary
group by Author_id
order by Sum(profit) desc
limit 3;

select * from most_profiting_authors_iswetha;