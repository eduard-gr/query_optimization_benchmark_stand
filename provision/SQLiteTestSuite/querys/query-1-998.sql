
SELECT a,
       a+b*2+c*3,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 2,3,1
