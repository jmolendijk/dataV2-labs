-- CHALLENGE 1.
-- Step 1: Calculate the royalty of each sale for each author and the advance for each author and publication
select titles.title_id, 
		authors.au_id, 
        (titles.advance * titleauthor.royaltyper / 100) as advance,
        (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as sales_royalty
from titles join titleauthor	-- Excluding 1 book which doesn't have assigned author.
on titles.title_id = titleauthor.title_id
left join authors
on titleauthor.au_id = authors.au_id
left join sales
on titles.title_id = sales.title_id;

-- Step 2: Aggregate the total royalties for each title and author
select calc.au_id, calc.title_id, sum(advance) as advance_total, sum(sales_royalty) as royalty_total
from
	(select titles.title_id, 
			authors.au_id, 
			(titles.advance * titleauthor.royaltyper / 100) as advance,
			(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as sales_royalty
	from titles join titleauthor	-- Excluding 1 book which doesn't have assigned author.
	on titles.title_id = titleauthor.title_id
	left join authors
	on titleauthor.au_id = authors.au_id
	left join sales
	on titles.title_id = sales.title_id) as calc
group by calc.title_id, calc.au_id;

-- Step 3: Calculate the total profits of each author
select profit.au_id, sum(profit.advance_total + profit.royalty_total) as profit
from
	(select calc.au_id, calc.title_id, sum(advance) as advance_total, sum(sales_royalty) as royalty_total
	from
		(select titles.title_id, 
				authors.au_id, 
				(titles.advance * titleauthor.royaltyper / 100) as advance,
				(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as sales_royalty
		from titles join titleauthor	-- Excluding 1 book which doesn't have assigned author.
		on titles.title_id = titleauthor.title_id
		left join authors
		on titleauthor.au_id = authors.au_id
		left join sales
		on titles.title_id = sales.title_id) as calc
		group by calc.title_id, calc.au_id) as profit
group by profit.au_id
order by profit desc
limit 3;


-- CHALLENGE 2.
drop table if exists calc;
create temporary table publications.calc
select titles.title_id, 
		authors.au_id, 
        (titles.advance * titleauthor.royaltyper / 100) as advance,
        (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as sales_royalty
from titles join titleauthor	-- Excluding 1 book which doesn't have assigned author.
on titles.title_id = titleauthor.title_id
left join authors
on titleauthor.au_id = authors.au_id
left join sales
on titles.title_id = sales.title_id;

drop table if exists profit;
create temporary table profit
select calc.au_id, calc.title_id, sum(advance) as advance_total, sum(sales_royalty) as royalty_total
from calc
group by calc.title_id, calc.au_id;

select profit.au_id, sum(profit.advance_total + profit.royalty_total) as profit
from profit
group by profit.au_id
order by profit desc
limit 3;


-- CHALLENGE 3.
drop table if exists most_profiting_authors_svetlana;
create table most_profiting_authors_svetlana
select profit.au_id as au_id, sum(profit.advance_total + profit.royalty_total) as profits
from profit
group by profit.au_id
order by profits desc
limit 3;