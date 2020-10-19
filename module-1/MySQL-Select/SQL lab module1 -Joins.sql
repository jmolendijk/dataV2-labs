

- Challenge 1 - Who Have Published What At Where?--

select A.au_id, A.au_lname, A.au_fname, T.title_id, T.title, P.pub_name
from authors A
inner join titleauthor TA
on A.au_id = TA.au_id
inner join titles T
on T.title_id = TA.title_id
inner join publishers P
on T.pub_id = P.pub_id;


-- Chalenge 2 - Who Have Published How Many At Where?

select A.au_id, A.au_lname, A.au_fname, count(T.title_id), P.pub_name
from authors A
inner join titleauthor TA
on A.au_id = TA.au_id
inner join titles T
on T.title_id = TA.title_id
inner join publishers P
on T.pub_id = P.pub_id
group by A.au_id, A.au_lname,P.pub_name
order by A.au_id;

-- title author
select count(au_id)
from titleauthor;

select sum(A.Count)
from
(select count(T.title_id) as Count
from authors A
inner join titleauthor TA
on A.au_id = TA.au_id
inner join titles T
on T.title_id = TA.title_id
inner join publishers P
on T.pub_id = P.pub_id
group by A.au_id, A.au_lname,P.pub_name
order by A.au_id) as A;



-- Chalenge 3 - Best Selling Authors?

select A.au_id, A.au_lname, A.au_fname, sum(S.qty)
from authors A
inner join titleauthor TA
on A.au_id = TA.au_id
inner join titles T
on T.title_id = TA.title_id
inner join sales S
on S.title_id = T.title_id
group by A.au_id, A.au_lname
order by sum(S.qty) desc
Limit 3;



-- Chalenge 4 - Best Selling Authors Rankings

select A.au_id, A.au_lname, A.au_fname, ifnull(sum(S.qty),0)
from authors A
left join titleauthor TA
on A.au_id = TA.au_id
left join titles T
on T.title_id = TA.title_id
left join sales S
on S.title_id = T.title_id
group by A.au_id, A.au_lname
order by sum(S.qty) desc;


