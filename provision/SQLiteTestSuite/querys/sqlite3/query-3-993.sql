SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d
  FROM t1
 WHERE b>c
   AND d>e
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 3,2
