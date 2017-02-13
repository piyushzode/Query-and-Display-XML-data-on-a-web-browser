let $issue := doc("SigmodRecord.xml")//issue
let $author := count($issue/articles/article[authors[author='Leonidas Fegaras']])

return
<Result>
&#xa;
Total number of Articles By Leonidas Fegaras: {$author}
&#xa;
</Result>