SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5
  FROM t1
 WHERE d>e
    OR b>c
 ORDER BY 1,2
