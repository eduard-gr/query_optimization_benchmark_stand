SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b-c
  FROM t1
 WHERE c>d
   AND (c<=d-2 OR c>=d+2)
