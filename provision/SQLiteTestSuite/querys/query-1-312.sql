
SELECT a,
       a+b*2+c*3+d*4+e*5,
       b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       e,
       a-b
  FROM t1
 ORDER BY 1,4,5,3,6,2
