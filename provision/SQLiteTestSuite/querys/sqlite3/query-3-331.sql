SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3,
       c-d
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR a>b
 ORDER BY 1,2,3
