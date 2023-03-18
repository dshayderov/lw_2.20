.mode csv
.headers on
.separator |
.mode box
select
timezone, count(city) as city_count from city
where federal_district in ('Приволжский','Сибирский')
group by timezone
order by timezone ASC;