SELECT a+b*2,
       a+b*2+c*3+d*4,
       d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d,
       a
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND a>b
   AND e+d BETWEEN a+b-10 AND c+130
