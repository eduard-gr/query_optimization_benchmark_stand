SELECT a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND a IS NULL
   AND d>e
