SELECT b,
       a+b*2
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR b>c
    OR c BETWEEN b-2 AND d+2
