-- (2) Return the names of all lakes, rivers and seas

attach database 'mondial.db' as 'mondial';
select name from lake union select name from river union select name from sea;
select name from lake union select name from river union select name from sea;
select name from lake union select name from river union select name from sea;
select name from lake union select name from river union select name from sea;
detach database 'mondial.db';
