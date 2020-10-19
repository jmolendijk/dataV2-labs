select distinct(prime_genre) from app;
select count(*), prime_genre from app where rating_count_tot > 0 group by prime_genre order by count(*) desc limit 1;
select count(*), prime_genre from app where ((rating_count_tot > 0 ) or (rating_count_tot <= 0)) group by prime_genre order by count(*) desc limit 1;
select count(*), prime_genre from app where ((rating_count_tot > 0) or (rating_count_tot <= 0)) group by prime_genre order by count(*) asc limit 1;
select track_name from app order by rating_count_tot desc limit 10;
select track_name from app order by user_rating desc limit 10;


