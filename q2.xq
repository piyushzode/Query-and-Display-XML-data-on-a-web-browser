for $issue in doc("SigmodRecord.xml")//issue
return("&#xa;Number of Articles:",count({$issue/articles/article}))