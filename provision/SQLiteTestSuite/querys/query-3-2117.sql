 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND a>b
 ORDER BY 1
