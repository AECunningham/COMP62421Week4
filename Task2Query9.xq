let $mondial := //mondial

for $r in $mondial/country,$IDREF in tokenize($r/@memberships,' '),$o in $mondial/organization
where $r/religion = "Buddhist" and $IDREF = $o/@id and $o/established > "1994-12-01"
let $c := $r/@car_code
group by $c
order by $r/name
return
<membership country="{$r/name}">
{$o/name}
</membership>

