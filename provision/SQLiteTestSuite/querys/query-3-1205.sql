SELECT c-d,
       abs(a)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND c>d
   AND b>c
 ORDER BY 1,2
