
SELECT (a+b+c+d+e)/5,
       d,
       a+b*2+c*3+d*4
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 3,2,1
