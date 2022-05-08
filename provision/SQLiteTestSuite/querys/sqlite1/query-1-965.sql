
SELECT a+b*2+c*3+d*4+e*5,
       a-b,
       b,
       a+b*2+c*3+d*4,
       a+b*2+c*3,
       d-e,
       abs(b-c)
  FROM t1
 WHERE b>c
   AND a>b
   AND c>d
 ORDER BY 4,2,1,7,5,6,3
