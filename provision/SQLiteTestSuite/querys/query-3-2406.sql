SELECT a-b,
       a+b*2+c*3+d*4+e*5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE a>b
   AND (c<=d-2 OR c>=d+2)
   AND (e>a AND e<b)
