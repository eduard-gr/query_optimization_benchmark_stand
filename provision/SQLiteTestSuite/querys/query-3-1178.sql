SELECT a+b*2+c*3,
       d-e,
       abs(a)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND b>c
