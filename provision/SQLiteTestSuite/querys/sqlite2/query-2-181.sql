SELECT a+b*2+c*3
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND d>e
