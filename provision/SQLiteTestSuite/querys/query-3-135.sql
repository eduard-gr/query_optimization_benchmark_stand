SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4+e*5,
       a+b*2,
       a,
       d-e,
       b
  FROM t1
 WHERE d>e
 ORDER BY 6,2,1,4,5,3
