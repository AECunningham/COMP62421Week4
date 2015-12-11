-- (6) Return the name of the countries that have the 10 longest total length of rivers

attach database 'mondial.db' as 'mondial';
select countryname,sum(length) from 
   (select distinct country.name as countryname,river.name,length
   from country,geo_river,river
   where country.code = geo_river.country
   and geo_river.river = river.name)
   group by countryname
   order by sum(length) desc
   limit 10;
select countryname,sum(length) from 
   (select distinct country.name as countryname,river.name,length
   from country,geo_river,river
   where country.code = geo_river.country
   and geo_river.river = river.name)
   group by countryname
   order by sum(length) desc
   limit 10;
select countryname,sum(length) from 
   (select distinct country.name as countryname,river.name,length
   from country,geo_river,river
   where country.code = geo_river.country
   and geo_river.river = river.name)
   group by countryname
   order by sum(length) desc
   limit 10;
select countryname,sum(length) from 
   (select distinct country.name as countryname,river.name,length
   from country,geo_river,river
   where country.code = geo_river.country
   and geo_river.river = river.name)
   group by countryname
   order by sum(length) desc
   limit 10;
detach database 'mondial.db';
