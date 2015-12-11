let $mondial := //mondial
for $city in $mondial/country//city
where $city/name = "Manchester"
return $city