select authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name, titles.title
from authors
join titleauthor
on authors.au_id = titleauthor.au_id
join titles
on titleauthor.title_id = titles.title_id
join publishers
on titles.pub_id = publishers.pub_id
order by authors.au_id ASC;

select count(titleauthor.au_id) from titleauthor
/*Should equal amount of rows of our output in CH1.*/

/*CH2*/
select authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name, count(title)
from authors
join titleauthor
on authors.au_id = titleauthor.au_id
join titles
on titleauthor.title_id = titles.title_id
join publishers
on titles.pub_id = publishers.pub_id
group by authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
order by count(title) DESC;



select count(titleauthor.au_id) from titleauthor;
/*Should equal the sum of the column title count*/

/*CH3*/
select authors.au_id, authors.au_lname, authors.au_fname, sum(sales.qty)
from authors
join titleauthor
on authors.au_id = titleauthor.au_id
join sales
on titleauthor.title_id = sales.title_id
group by authors.au_id, authors.au_lname, authors.au_fname
order by sum(sales.qty) desc
limit 3;

/*CH4*/
select authors.au_id, authors.au_lname, authors.au_fname, ifnull(sum(sales.qty), 0)
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join sales
on titleauthor.title_id = sales.title_id
group by authors.au_id, authors.au_lname, authors.au_fname
order by sum(sales.qty) desc;



