SELECT abs(b-c)
  FROM t1
 WHERE b IS NOT NULL
   AND e+d BETWEEN a+b-10 AND c+130