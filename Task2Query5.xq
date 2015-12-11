let $mondial := //mondial
let $riv :=
(for $r in $mondial/river[@country],$IDREF in tokenize($r/@country,' ')
where $IDREF eq "GB"
return
<riverid>{$r/@id}</riverid>)

for $r in $riv, $river in $mondial/river
where $r/@id = $river/@id
return 
<gbriver name="{$river/name}" length="{$river/length}"/>

