SELECT a+b*2+c*3+d*4,
       a
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR b>c
    OR (e>a AND e<b)
 ORDER BY 2,1
