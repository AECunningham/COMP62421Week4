-- (9) Return the name of the country and the name of the organization of countries with Buddhist populations that are members of organizations established after 1st December 1994

attach database 'mondial.db' as 'mondial';
select country.name,organization.name
   from country,religion,organization,ismember
   where country.code = religion.country
   and religion.name = "Buddhist" and religion.percentage > 0
   and country.code = ismember.country
   and ismember.organization = organization.abbreviation
   and organization.established > "1994-12-01"
   order by country.name;
select country.name,organization.name
   from country,religion,organization,ismember
   where country.code = religion.country
   and religion.name = "Buddhist" and religion.percentage > 0
   and country.code = ismember.country
   and ismember.organization = organization.abbreviation
   and organization.established > "1994-12-01"
   order by country.name;
select country.name,organization.name
   from country,religion,organization,ismember
   where country.code = religion.country
   and religion.name = "Buddhist" and religion.percentage > 0
   and country.code = ismember.country
   and ismember.organization = organization.abbreviation
   and organization.established > "1994-12-01"
   order by country.name;
select country.name,organization.name
   from country,religion,organization,ismember
   where country.code = religion.country
   and religion.name = "Buddhist" and religion.percentage > 0
   and country.code = ismember.country
   and ismember.organization = organization.abbreviation
   and organization.established > "1994-12-01"
   order by country.name;
detach database 'mondial.db';
