SELECT d,
       b-c,
       (a+b+c+d+e)/5
  FROM t1
 WHERE d>e
   AND (c<=d-2 OR c>=d+2)
   AND (e>c OR e<d)
 ORDER BY 1,3
