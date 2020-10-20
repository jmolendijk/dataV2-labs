/*STEP 1 */
select authors.au_id, titleauthor.title_id, titles.advance*titleauthor.royaltyper/100 AS advance,
titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
from authors
join titleauthor
on authors.au_id = titleauthor.au_id
join titles
on titleauthor.title_id = titles.title_id
join sales
on titleauthor.title_id = sales.title_id
order by sales_royalty DESC;

/*STEP 2 */
select authors.au_id, sales.title_id, sum(sales_royalty) AS total_royals, sum(advance) AS total_advance
	from (select authors.au_id, titleauthor.title_id, titles.advance*titleauthor.royaltyper/100 AS advance,
	titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
	from authors
	join titleauthor
	on authors.au_id = titleauthor.au_id
	join titles
	on titleauthor.title_id = titles.title_id
	join sales
	on titleauthor.title_id = sales.title_id) as X,
authors
join titleauthor
on authors.au_id = titleauthor.au_id
join sales
on sales.title_id = titleauthor.title_id
group by authors.au_id, sales.title_id
order by title_id desc;

/*STEP 3 */
select authors.au_id, sum(X.sales_royalty) + sum(X.advance) AS profit
from (select authors.au_id, titleauthor.title_id, sum(X.sales_royalty) AS total_royals, sum(X.advance) AS total_advance
	from (select authors.au_id, titleauthor.title_id, titles.advance*titleauthor.royaltyper/100 AS advance,
	titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
	from authors
	join titleauthor
	on authors.au_id = titleauthor.au_id
	join titles
	on titleauthor.title_id = titles.title_id
	join sales
	on titleauthor.title_id = sales.title_id) as X,
authors
join titleauthor
on authors.au_id = titleauthor.au_id
join sales
on titleauthor.title_id = sales.title_id
group by authors.au_id, titleauthor.title_id) AS Y,
authors
join titleauthor
on authors.au_id = titleauthor.au_id
group by authors.au_id
order by profit desc
limit 3;









