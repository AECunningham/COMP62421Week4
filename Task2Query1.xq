let $mondial := //mondial
let $sea := 
(for $s in $mondial/sea[@country],$IDREF in tokenize($s/@country,' ')
return
<sea name="{$s/name}" >
<country>{$IDREF}</country>
</sea>)

for $s in $sea,$land in $mondial/country
where $s/country = $land/@car_code
let $c := $s/country
group by $c
order by $land/name
return
<group country="{$land/name}"/>
