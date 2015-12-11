-- (10) Return the name each country with the number of islands in it

attach database 'mondial.db' as 'mondial';
select country.name,count(distinct island) as Islands
   from country,geo_island
   where country.code = geo_island.country
   group by country.name,geo_island.country;
select country.name,count(distinct island) as Islands
   from country,geo_island
   where country.code = geo_island.country
   group by country.name,geo_island.country;
select country.name,count(distinct island) as Islands
   from country,geo_island
   where country.code = geo_island.country
   group by country.name,geo_island.country;
select country.name,count(distinct island) as Islands
   from country,geo_island
   where country.code = geo_island.country
   group by country.name,geo_island.country;
detach database 'mondial';
