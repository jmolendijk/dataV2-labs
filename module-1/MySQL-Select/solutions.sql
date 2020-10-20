select authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name
from publications.authors authors
inner join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id
inner join publications.titles titles
on titles.title_id = titleauthor.title_id
inner join publications.publishers publishers
on publishers.pub_id = titles.pub_id;

select authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name, count(publishers.pub_name)
from publications.authors authors
inner join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id
inner join publications.titles titles
on titles.title_id = titleauthor.title_id
inner join publications.publishers publishers
on publishers.pub_id = titles.pub_id
group by authors.au_id, publishers.pub_name;

select authors.au_id, authors.au_lname, authors.au_fname, count(titles.title_id) 
from publications.authors authors
left join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id
left join publications.titles titles
on titles.title_id = titleauthor.title_id
group by authors.au_id
order by count(titles.title_id) desc limit 3;

select authors.au_id, authors.au_lname, authors.au_fname, count(titles.title_id) 
from publications.authors authors
left join publications.titleauthor titleauthor
on authors.au_id = titleauthor.au_id
left join publications.titles titles
on titles.title_id = titleauthor.title_id
group by authors.au_id
order by count(titles.title_id) desc;
