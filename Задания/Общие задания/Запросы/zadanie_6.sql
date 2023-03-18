.mode csv
.headers on
.separator |
.mode box
with
lat1 as (select geo_lat as lat1 from city where city = 'Самара'),
lon1 as (select geo_lon as lon1 from city where city = 'Самара'),
lat2 as (select geo_lat as lat2, city from city where city != 'Самара'),
lon2 as (select geo_lon as lon2 from city where city != 'Самара')
select sqrt(power((lat1 - lat2),2) + power((lon1 - lon2),2)) as distance, city
from (lat1, lat2, lon1, lon2)
order by distance ASC
limit 3;