SELECT a-b,
       (a+b+c+d+e)/5,
       b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3,
       abs(a)
  FROM t1
 WHERE b>c
   AND c>d
   AND e+d BETWEEN a+b-10 AND c+130
