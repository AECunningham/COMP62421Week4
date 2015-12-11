-- (5) Return, for every river in Great Britain, the length of that river

attach database 'mondial.db' as 'mondial';
select distinct name,length from river,geo_river
   where river.name = geo_river.river
   and country = "GB";
select distinct name,length from river,geo_river
   where river.name = geo_river.river
   and country = "GB";
select distinct name,length from river,geo_river
   where river.name = geo_river.river
   and country = "GB";
select distinct name,length from river,geo_river
   where river.name = geo_river.river
   and country = "GB";
detach database 'mondial.db';
