
SELECT b,
       (a+b+c+d+e)/5,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(b-c),
       b-c
  FROM t1
 WHERE a>b
 ORDER BY 2,5,3,4,1
