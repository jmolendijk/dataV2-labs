update salespersons
set staff_store = 'Miami'
where id = 5;

SET SQL_SAFE_UPDATES = 0;
update customers
set cust_email = (case when cust_name = 'Pablo Picasso' then 'ppicasso@gmail.com'
						when cust_name = 'Abraham Lincoln' then 'lincoln@us.gov'
                        when cust_name = 'Napoléon Bonaparte' then 'hello@napoleon.me'
				end)
where cust_name in ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');