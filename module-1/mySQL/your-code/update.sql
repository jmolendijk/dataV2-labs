/*Now you find an error you need to fix in your existing data - in the Salespersons table, 
you mistakenly spelled Miami as Mimia for Paige Turner. Also, you received the email addresses of the three customers:
Name	Email
Pablo Picasso	ppicasso@gmail.com
Abraham Lincoln	lincoln@us.gov
Napoléon Bonaparte	hello@napoleon.me*/

update salesperson
set store = 'Miami'
where sp_ID = 5;

update customers
set email = ( case when cname = 'Pablo Picasso' then 'ppicasso@gmail.com'
					when cname = 'Abraham Lincoln' then 'lincoln@us.gov'
					when cname = 'Napoléon Bonaparte' then 'hello@napoleon.me'
					end
			) 
where cus_ID in (1,2,3);