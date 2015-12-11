let $mondial := //mondial
for $city in $mondial/country//city
where some $n in $city/name satisfies starts-with($n,"Man")
return <city>
 {$city/name}
</city>