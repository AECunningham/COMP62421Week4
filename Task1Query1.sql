-- (1) Return the names of countries that are not landlocked (i.e. have a sea coast)

attach database 'mondial.db' as 'mondial';
select name from country where code in (select country from geo_sea) order by name;
select name from country where code in (select country from geo_sea) order by name;
select name from country where code in (select country from geo_sea) order by name;
select name from country where code in (select country from geo_sea) order by name;
detach database 'mondial';


