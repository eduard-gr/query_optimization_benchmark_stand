SELECT b-c,
       (a+b+c+d+e)/5
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
