-- Challenge 1 - Who Have Published What At Where?
-- select count(authors.au_id)
select authors.au_id, authors.au_lname, authors.au_fname, titles.title_id, titles.title, publishers.pub_name
from authors join titleauthor
on authors.au_id = titleauthor.au_id
join titles
on titleauthor.title_id = titles.title_id
join publishers
on titles.pub_id = publishers.pub_id
order by authors.au_id asc;
-- select count(au_id) from titleauthor; -- for check result of challenge 1.alter

-- Challenge 2 - Who Have Published How Many At Where?
select authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name, count(titles.title_id)
from authors join titleauthor
on authors.au_id = titleauthor.au_id
join titles
on titleauthor.title_id = titles.title_id
join publishers
on titles.pub_id = publishers.pub_id
group by authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
order by authors.au_id desc;

/*
Queries to check result:
select sum(a.c)
from
	(select count(titles.title_id) as c
	from authors join titleauthor
	on authors.au_id = titleauthor.au_id
	join titles
	on titleauthor.title_id = titles.title_id
	join publishers
	on titles.pub_id = publishers.pub_id
	group by authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
	order by authors.au_id desc) as a;
select count(au_id) from titleauthor;
*/

-- Challenge 3 - Best Selling Authors
select authors.au_id, authors.au_lname, authors.au_fname, sum(sales.qty) as total_sales
from authors join titleauthor
	on authors.au_id = titleauthor.au_id
	join sales
	on titleauthor.title_id = sales.title_id
group by authors.au_id, authors.au_lname, authors.au_fname
order by total_sales desc
limit 3;

-- Challenge 4 - Best Selling Authors Ranking
select authors.au_id, authors.au_lname, authors.au_fname, ifnull(sum(sales.qty), 0) as total_sales
from authors left join titleauthor
	on authors.au_id = titleauthor.au_id
	left join sales
	on titleauthor.title_id = sales.title_id
group by authors.au_id, authors.au_lname, authors.au_fname
order by total_sales desc;