use publications;

/******Challenge 1 - Most Profiting Authors******/


/***Step 1***/
select t.title_id
		, ta.au_id
        , t.advance*ta.royaltyper / 100 as advance
        , t.price * s.qty * (t.royalty / 100) * (ta.royaltyper / 100) as sales_royalty
from titleauthor ta
inner join titles t
on ta.title_id = t.title_id   
inner join sales s
on t.title_id = s.title_id;


/***Step 2***/
select ar.title_id
		, ar.au_id
        , sum(ar.sales_royalty) as sum_sales_royalty
        , sum(ar.advance) as sum_advance
from
		(select t.title_id
				, ta.au_id
				, t.advance*ta.royaltyper / 100 as advance
				, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as sales_royalty
		from titleauthor ta
		inner join titles t
		on ta.title_id = t.title_id   
		inner join sales s
		on t.title_id = s.title_id  
        ) ar 
group by ar.title_id, ar.au_id
        ;
        
/***Step 3***/
select prof.au_id
        , sum(prof.sum_sales_royalty)+sum(prof.sum_advance) as total_profits
from
		(select ar.title_id
		, ar.au_id
        , sum(ar.sales_royalty) as sum_sales_royalty
        , sum(ar.advance) as sum_advance
		from
				(select t.title_id
						, ta.au_id
						, t.advance*ta.royaltyper / 100 as advance
						, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as sales_royalty
				from titleauthor ta
				inner join titles t
				on ta.title_id = t.title_id   
				inner join sales s
				on t.title_id = s.title_id  
				) ar 
		group by ar.title_id, ar.au_id
) prof
group by prof.au_id
order by sum(prof.sum_sales_royalty)+sum(prof.sum_advance) desc
limit 3;


/******Challenge 2 - Alternative solution******/

-- step 1
create temporary table ta_ar
		select t.title_id
				, ta.au_id
				, t.advance*ta.royaltyper / 100 as advance
				, t.price * s.qty * (t.royalty / 100) * (ta.royaltyper / 100) as sales_royalty
		from titleauthor ta
		inner join titles t
		on ta.title_id = t.title_id   
		inner join sales s
		on t.title_id = s.title_id;

-- step 2
create temporary table ta_ar_sum
		select ar.title_id
				, ar.au_id
				, sum(ar.sales_royalty) as sum_sales_royalty
				, sum(ar.advance) as sum_advance
		from ta_ar ar 
		group by ar.title_id, ar.au_id;
 
-- step 3 
select prof.au_id
        , sum(prof.sum_sales_royalty)+sum(prof.sum_advance) as total_profits
from ta_ar_sum prof
group by prof.au_id
order by sum(prof.sum_sales_royalty)+sum(prof.sum_advance) desc
limit 3;


/******Challenge 3******/


create table most_profiting_authours_iryna_daftoct2020
			select prof.au_id
					, sum(prof.sum_sales_royalty)+sum(prof.sum_advance) as total_profits
			from
					(select ar.title_id
					, ar.au_id
					, sum(ar.sales_royalty) as sum_sales_royalty
					, sum(ar.advance) as sum_advance
					from
							(select t.title_id
									, ta.au_id
									, t.advance*ta.royaltyper / 100 as advance
									, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as sales_royalty
							from titleauthor ta
							inner join titles t
							on ta.title_id = t.title_id   
							inner join sales s
							on t.title_id = s.title_id  
							) ar 
					group by ar.title_id, ar.au_id
			) prof
			group by prof.au_id
			order by sum(prof.sum_sales_royalty)+sum(prof.sum_advance) desc
			limit 3;
            