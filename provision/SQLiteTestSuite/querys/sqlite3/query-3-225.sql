SELECT b-c,
       a+b*2+c*3+d*4+e*5,
       a+b*2
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND b>c
   AND (e>a AND e<b)
 ORDER BY 3,1,2
