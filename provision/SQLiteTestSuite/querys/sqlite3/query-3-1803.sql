SELECT c,
       a+b*2+c*3+d*4+e*5,
       d-e,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR d>e
 ORDER BY 3,1
