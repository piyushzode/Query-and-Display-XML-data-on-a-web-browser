let $issue := doc("SigmodRecord.xml")//issue
let $vol := count(distinct-values($issue/volume))

return
<Result>
&#xa;
Total number of distinct volumes : {$vol}
&#xa;
</Result>