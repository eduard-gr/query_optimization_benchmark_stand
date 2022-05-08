SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c,
       a+b*2+c*3
  FROM t1
 WHERE (e>a AND e<b)
    OR c>d
    OR d>e
 ORDER BY 1,5,3
