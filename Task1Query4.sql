-- (4) Return the name of countries that have more than 10 islands

attach database 'mondial.db' as 'mondial';
select country.name
   from country,geo_island
   where country.code = geo_island.country
   group by country.name
   having count(distinct island) > 10;
select country.name
   from country,geo_island
   where country.code = geo_island.country
   group by country.name
   having count(distinct island) > 10;
select country.name
   from country,geo_island
   where country.code = geo_island.country
   group by country.name
   having count(distinct island) > 10;
select country.name
   from country,geo_island
   where country.code = geo_island.country
   group by country.name
   having count(distinct island) > 10;
detach database 'mondial';
