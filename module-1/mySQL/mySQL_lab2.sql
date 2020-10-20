
-- Challenge 1 - Most Profiting Authors

-- Step 1 Calculate the royalty of each sale for each author and the advance for each author and publication--

select a.au_id, a.au_lname, a.au_fname,t.title_id,t.title, s.ord_num,t.price*s.qty*t.royalty/100*ta.royaltyper/100 as "royalty",t.advance*ta.royaltyper/100 as "advance",t.pub_id
from authors a
inner join titleauthor ta 
on a.au_id = ta.`au_id`
inner join titles t  
on t.title_id = ta.title_id
inner join sales s 
on s.title_id =t.`title_id`
inner join pub_info p on p.pub_id = t.pub_id;


-- Step 2: Aggregate the total royalties for each title and author--

select sum(t.price*s.qty*t.royalty/100*ta.royaltyper/100) as "total_royalty", sum(t.advance*ta.royaltyper/100) as "advance"
from (select a.au_id, a.au_lname, a.au_fname,t.title_id,t.title, s.ord_num,t.price*s.qty*t.royalty/100*ta.royaltyper/100 as "royalty",t.advance*ta.royaltyper/100 as "advance",t.pub_id
from authors a
inner join titleauthor ta 
on a.au_id = ta.`au_id`
inner join titles t  
on t.title_id = ta.title_id
inner join sales s 
on s.title_id =t.`title_id`
inner join pub_info p on p.pub_id = t.pub_id) as royalty ;