
SELECT c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3,
       c,
       abs(a)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR (e>a AND e<b)
 ORDER BY 2,4,1,3,5,6
