
SELECT b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2,
       b,
       abs(b-c),
       c-d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND d>e
   AND (a>b-2 AND a<b+2)
 ORDER BY 3,5,6,7,2,1,4
