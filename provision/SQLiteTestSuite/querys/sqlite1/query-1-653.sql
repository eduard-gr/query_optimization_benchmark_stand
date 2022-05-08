
SELECT c-d,
       abs(b-c),
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE a>b
   AND e+d BETWEEN a+b-10 AND c+130
   AND (e>a AND e<b)
 ORDER BY 3,4,1,2
