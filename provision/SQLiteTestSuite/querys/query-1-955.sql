
SELECT e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 4,2,1,6,5,3
