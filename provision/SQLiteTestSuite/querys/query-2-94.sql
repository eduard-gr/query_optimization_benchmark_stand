SELECT d,
       b-c,
       abs(b-c),
       b
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
