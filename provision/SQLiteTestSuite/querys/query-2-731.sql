SELECT a+b*2+c*3+d*4,
       a+b*2+c*3,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND a>b
   AND e+d BETWEEN a+b-10 AND c+130
