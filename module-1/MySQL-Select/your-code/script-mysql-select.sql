/*Challenge 1 - Who Have Published What At Where?*/
select ta.au_id as Author_id
		, a.au_lname as Last_name
        , a.au_fname as First_name
        , t.title as Title
		, p.pub_name as Publisher
from titleauthor ta
inner join authors a
on ta.au_id = a.au_id
inner join titles t
on ta.title_id = t.title_id
inner join publishers p
on t.pub_id = p.pub_id;


/*Challenge 2 - Who Have Published How Many At Where?*/
select ta.au_id as Author_id
		, a.au_lname as Last_name
        , a.au_fname as First_name
		, p.pub_name as Publisher
		, count(t.title) as Title_count
from titleauthor ta
inner join authors a
on ta.au_id = a.au_id
inner join titles t
on ta.title_id = t.title_id
inner join publishers p
on t.pub_id = p.pub_id
group by ta.au_id
		, a.au_lname
        , a.au_fname
		, p.pub_name
        ;


/*Challenge 3 - Best Selling Authors*/
select ta.au_id as Author_id
		, a.au_lname as Last_name
        , a.au_fname as First_name
        , sum(s.qty) as Total
from sales s
inner join titleauthor ta
on s.title_id =  ta.title_id
inner join authors a
on ta.au_id = a.au_id
group by  ta.au_id
		, a.au_lname
        , a.au_fname
order by sum(s.qty) desc
limit 3;


/*Challenge 4 - Best Selling Authors Ranking*/

select a.au_id as Author_id
		, a.au_lname as Last_name
        , a.au_fname as First_name
        , coalesce(sum(s.qty),0)  as Total
from authors a 
left join titleauthor ta
on a.au_id = ta.au_id
left join sales s
on ta.title_id = s.title_id
group by a.au_id
		, a.au_lname
        , a.au_fname
order by sum(s.qty) desc;
 
