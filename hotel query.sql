with hotels as 
(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$']
)

select * 
from hotels h left join meal_cost$ m
on m.meal = h.meal
left join market_segment$ k
on k.market_segment = h.market_segment

with hotels as 
(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$']
)


select arrival_date_year,hotel  
,round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenu 
from hotels 
group by arrival_date_year ,hotel
order by revenu desc
