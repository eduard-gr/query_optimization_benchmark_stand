SELECT d,
       c-d,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a-b
  FROM t1
 ORDER BY 2,5,3,1,4
