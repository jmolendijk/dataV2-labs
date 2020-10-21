

/* Hi Erin, I am trying the way Jan suggested earlier today: doing Challenge 2 first. You can find Challenge 1 right after, and Challenge 3 if for some fantastic miracle I manage to get there haha 
*/


-- Challenge 2 - Alternative Solution -- This one I managed it, but I get a different solution Sniff :-(
-- Step1 : Royalty of each sale and advance per author
create temporary table Royalties
select a.au_id as AuthorID,
			t.title_id as TitleID,
			t.price*s.qty*t.royalty/100*ta.royaltyper/100 as royalty, 
			t.advance*ta.royaltyper/100 as advance
from authors a
inner join titleauthor ta 
on a.au_id = ta.au_id
inner join titles t  
on t.title_id = ta.title_id
inner join sales s 
on s.title_id =t.title_id;

-- Step2 : Sum of royalties --
create temporary table Sum_of_Royalties
select	AuthorID,
			TitleID,
			advance,
			sum(royalty) as total_royalties
from Royalties
group by	AuthorID,
				TitleID,
				advance;

-- Step 3: Total profit of each author
select	AuthorID,
			TitleID,
			sum(total_royalties + advance) as profit
from Sum_of_Royalties
group by AuthorID,
				TitleID
order by profit desc
limit 3;


-- Challenge 1 - Most Profiting Authors with Subqueries

-- Step 1 Royalty of each sale --

-- This is Royalties temp table
select a.au_id as AuthorID,
			t.title_id as TitleID,
			t.price*s.qty*t.royalty/100*ta.royaltyper/100 as royalty, 
			t.advance*ta.royaltyper/100 as advance
from authors a
inner join titleauthor ta 
on a.au_id = ta.au_id
inner join titles t  
on t.title_id = ta.title_id
inner join sales s 
on s.title_id =t.title_id;


-- Step2 : Sum of royalties -- I'm applying Jan's method of replacing the temporary table by the table query

-- This is Sum_of_Royalties temp table
select	AuthorID,
			TitleID,
			advance,
			sum(royalty) as total_royalties
from(select a.au_id as AuthorID,
			t.title_id as TitleID,
			t.price*s.qty*t.royalty/100*ta.royaltyper/100 as royalty, 
			t.advance*ta.royaltyper/100 as advance
		from authors a
		inner join titleauthor ta 
		on a.au_id = ta.au_id
		inner join titles t  
		on t.title_id = ta.title_id
		inner join sales s 
		on s.title_id =t.title_id) as Royalties1
		group by	AuthorID,
						TitleID,
						advance; -- YEEEE IT WORKED!!!! (This is the happiest moment this SQL assignment has provided! haha)


-- Step 3: Total profit of each author--

select	AuthorID,
			TitleID,
			sum(total_royalties + advance) as profit
from(select	AuthorID,
			TitleID,
			advance,
			sum(royalty) as total_royalties
from(select a.au_id as AuthorID,
			t.title_id as TitleID,
			t.price*s.qty*t.royalty/100*ta.royaltyper/100 as royalty, 
			t.advance*ta.royaltyper/100 as advance
		from authors a
		inner join titleauthor ta 
		on a.au_id = ta.au_id
		inner join titles t  
		on t.title_id = ta.title_id
		inner join sales s 
		on s.title_id =t.title_id) as Royalties1
		group by	AuthorID,
						TitleID,
						advance) as Sum_of_Royalties1
group by AuthorID,
				TitleID
order by profit desc
limit 3;

-- Oh wow it worked too. I stil need to check why is my result different...)

-- Challenge 3 --

-- @ Erin, I will create the table even if the result is different (now that the queries seem to be working-ish). I will update the data as soon as I find the error

create table most_profiting_authors_AlexFinally
select	AuthorID,
			sum(total_royalties + advance) as profit
from Sum_of_Royalties
group by AuthorID
order by profit desc
limit 3;