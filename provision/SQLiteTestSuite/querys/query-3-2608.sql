SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c-d,
       c,
       b,
       e,
       a+b*2+c*3+d*4
  FROM t1
 WHERE c>d
   AND e+d BETWEEN a+b-10 AND c+130
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
