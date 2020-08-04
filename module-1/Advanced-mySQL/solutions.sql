-- CHALLENGE 1 --
select ta.title_id as Title_ID,
	   ta.au_id as Author_ID,
	   t.advance * ta.royaltyper / 100 as Advance,
       t.price * s.qty * (t.royalty/100) * (ta.royaltyper/100) as Royalty_per_Sale
from titleauthor ta
join titles t on t.title_id = ta.title_id
join sales s on s.title_id = t.title_id
order by Title_ID ASC;
-- Let's call this subquery step1 --

select step1.Title_ID,
	   step1.Author_ID,
       step1.Advance,
       sum(step1.Royalty_per_Sale) as Total_Royalty
from (
select ta.title_id as Title_ID,
	   ta.au_id as Author_ID,
	   t.advance * ta.royaltyper / 100 as Advance,
       t.price * s.qty * (t.royalty/100) * (ta.royaltyper/100) as Royalty_per_Sale
from titleauthor ta
join titles t on t.title_id = ta.title_id
join sales s on s.title_id = t.title_id) step1
group by step1.Title_ID, step1.Author_ID, step1.Advance;
-- Let's call this subquery step2 --

select step2.Author_ID,
	   sum(step2.Total_Royalty + step2.Advance) as Profits
from (
select step1.Title_ID,
	   step1.Author_ID,
       step1.Advance,
       sum(step1.Royalty_per_Sale) as Total_Royalty
from (
select ta.title_id as Title_ID,
	   ta.au_id as Author_ID,
	   t.advance * ta.royaltyper / 100 as Advance,
       t.price * s.qty * (t.royalty/100) * (ta.royaltyper/100) as Royalty_per_Sale
from titleauthor ta
join titles t on t.title_id = ta.title_id
join sales s on s.title_id = t.title_id) step1
group by step1.Title_ID, step1.Author_ID, step1.Advance) step2
group by step2.Author_ID
order by Profits desc
limit 3;

-- CHALLENGE 2 --
create temporary table publications.alternative
select ta.title_id as Title_ID,
	   ta.au_id as Author_ID,
	   t.advance * ta.royaltyper / 100 as Advance,
       t.price * s.qty * (t.royalty/100) * (ta.royaltyper/100) as Royalty_per_Sale
from titleauthor ta
join titles t on t.title_id = ta.title_id
join sales s on s.title_id = t.title_id
order by Title_ID ASC;

create temporary table publications.alternative2
select Title_ID,
	   Author_ID,
       Advance,
       sum(Royalty_per_Sale) as Total_Royalty
from alternative
group by Title_ID, Author_ID, Advance;

select Author_ID,
	   sum(Total_Royalty + Advance) as Profits
from alternative2
group by Author_ID
order by Profits desc
limit 3;

-- Challenge 3 -- 
create table publications.most_profiting_authors_sarah
select Author_ID,
	   sum(Total_Royalty + Advance) as Profits
from alternative2
group by Author_ID
order by Profits desc;