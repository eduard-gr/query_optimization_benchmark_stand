SELECT a+b*2+c*3+d*4,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>c OR e<d)
   AND d>e
   AND d NOT BETWEEN 110 AND 150
