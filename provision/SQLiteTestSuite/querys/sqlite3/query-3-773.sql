SELECT b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2
  FROM t1
 WHERE a>b
   AND d>e
   AND c BETWEEN b-2 AND d+2
 ORDER BY 2,1,3
