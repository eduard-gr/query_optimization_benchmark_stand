SELECT b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND d NOT BETWEEN 110 AND 150
   AND a>b
