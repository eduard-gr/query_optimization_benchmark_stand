
SELECT c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 6,3,1,2,4,5
