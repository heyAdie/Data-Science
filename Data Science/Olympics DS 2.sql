use project;

-- (A):
select *
from olympics;

-- (B):
select name,medal
from olympics;

-- (c):
select count(distinct name)
from olympics;

-- (D):
select distinct(name),medal
from olympics
where medal = 'gold';

-- (E):
select distinct(name),medal,year
from olympics
where medal ='silver'
order by year;

-- (G):
select team,medal
from olympics
where medal = 'gold'
group by team
having count(medal) > '50';

-- (I):
select name,count(medal)
from olympics
group by name
order by count(medal) Desc
limit 1;



-- (J):
select event
from olympics
where event like '%freestyle%';

-- (L):
select name,count(medal),year
from olympics
group by name,year
having count(medal) > 1;

-- (M):
select team,count(distinct(season)),medal
from olympics
where medal = 'gold'
group by team
having count(distinct(season)) = '2';

-- (O):
select team,(count(medal)/count(distinct(name))) as average
from olympics
group by team;

-- (S):
select count(distinct(sport)) as diff_sports,team
from olympics
group by team
having count(distinct(sport)) > 10; 

-- (F):
select team,
sum(case when medal = 'gold' then 1 else 0 end) as gold_medal,
sum(case when medal = 'silver' then 1 else 0 end) as silver_medal,
sum(case when medal = 'bronze' then 1 else 0 end) as bronze_medal 
from olympics
group by team
having gold_medal != '0' or silver_medal != '0' or bronze_medal != '0';


-- (N):
select max(year) - min(year) as year_diff,team
from olympics
where medal != '0'
group by team;

-- (P):
select distinct(name),event,
sum(case when medal = 'silver' then 1 else 0 end) as silver_count,
sum(case when medal = 'gold' then 1 else 0 end) as gold_count
from olympics
group by event,name
having silver_count != '0'and gold_count != '0';








