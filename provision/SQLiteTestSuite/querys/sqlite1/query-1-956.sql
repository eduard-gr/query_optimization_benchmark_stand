
SELECT b-c,
       a+b*2+c*3,
       a+b*2,
       c-d,
       (a+b+c+d+e)/5,
       a-b
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND d NOT BETWEEN 110 AND 150
   AND d>e
 ORDER BY 6,1,5,3,2,4
