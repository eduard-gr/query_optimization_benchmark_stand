SELECT b-c,
       b,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND a>b
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 3,1,2
