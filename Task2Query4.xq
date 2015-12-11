let $mondial := //mondial
let $is := 
(for $i in $mondial/island[@country],$IDREF in tokenize($i/@country,' ')
return
<island name="{$i/name}" >
<country>{$IDREF}</country>
</island>)

let $gp :=
(for $i in $is,$land in $mondial/country
where $i/country = $land/@car_code
let $c := $i/country
group by $c
order by $land/name
return
<group country="{$land/name}" islands="{count($i)}"/>)

for $g in $gp
where xs:integer($g/@islands) gt 10
order by $g/@country
return 
<country name="{$g/@country}"/>