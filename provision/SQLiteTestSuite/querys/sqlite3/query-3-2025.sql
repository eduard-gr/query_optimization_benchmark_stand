SELECT c,
       a+b*2+c*3+d*4,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5,
       a+b*2,
       d-e
  FROM t1
 WHERE (e>a AND e<b)
   AND c>d
   AND e+d BETWEEN a+b-10 AND c+130
 ORDER BY 4,6,2,1,5,3
