
SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       b
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 6,1,2,3,7,4,5
