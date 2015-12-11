let $mondial := //mondial
let $lake := $mondial/lake/name
let $river := $mondial/river/name
let $sea := $mondial/sea/name
for $water in $lake union $river union $sea
order by $water
return $water