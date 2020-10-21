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
select authors.au_id, X.title_id, sum(sales_royalty) AS total_royals, advance
	from (select authors.au_id, titleauthor.title_id, titles.advance*titleauthor.royaltyper/100 AS advance,
titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
from authors
join titleauthor
on authors.au_id = titleauthor.au_id
join titles
on titleauthor.title_id = titles.title_id
join sales
on titleauthor.title_id = sales.title_id) as X
    join authors
    on authors.au_id = X.au_id
group by authors.au_id, X.title_id, advance;

/*STEP 3 */
select authors.au_id, sum(Y.total_royals + Y.advance) AS profit
from (select authors.au_id, X.title_id, sum(sales_royalty) AS total_royals, advance
	from (select authors.au_id, titleauthor.title_id, titles.advance*titleauthor.royaltyper/100 AS advance,
titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
from authors
join titleauthor
on authors.au_id = titleauthor.au_id
join titles
on titleauthor.title_id = titles.title_id
join sales
on titleauthor.title_id = sales.title_id) as X
    join authors
    on authors.au_id = X.au_id
group by authors.au_id, X.title_id, advance) AS Y
join authors
on authors.au_id = Y.au_id
group by authors.au_id
order by profit DESC
limit 3;











