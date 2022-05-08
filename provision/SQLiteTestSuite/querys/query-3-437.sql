SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c,
       b-c,
       d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND b>c
   AND e+d BETWEEN a+b-10 AND c+130
 ORDER BY 2,3,4,1
