SELECT (a+b+c+d+e)/5,
       abs(b-c)
  FROM t1
 WHERE d>e
   AND b>c
   AND (a>b-2 AND a<b+2)
 ORDER BY 2,1
