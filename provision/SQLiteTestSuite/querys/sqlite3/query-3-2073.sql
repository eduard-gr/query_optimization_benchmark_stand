SELECT a+b*2,
       d,
       e,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d>e
    OR (c<=d-2 OR c>=d+2)
    OR a>b
 ORDER BY 1,2,5,4,3
