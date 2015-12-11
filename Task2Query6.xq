let $mondial := //mondial
let $sortedlist :=
(let $rivertotal :=
(let $natrivers :=
(for $r in $mondial/river[@country], $IDREF in tokenize($r/@country,' ')
group by $IDREF
order by $IDREF
return
<country code="{$IDREF}">
{for $river in $r
return
<river name ="{$river/name}">
       {$river/length}
</river>
}  
</country>)

for $n in $natrivers,$land in $mondial/country
where $n/@code = $land/@car_code
let $c := $n/@code
group by $c
order by $land/name
return
<country name="{$land/name}">
 <riverlength>{sum($n/river/length)}</riverlength>
</country>)

return <countries>
{for $r in $rivertotal 
order by xs:decimal($r/riverlength) descending
return (<li>{$r/@name/string()}</li>)}
</countries>)

for $i at $index in $sortedlist/li
where $index <= 10
return $i



