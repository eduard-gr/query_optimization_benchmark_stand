SELECT d-e,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2,
       a+b*2+c*3+d*4,
       b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 3,1,4
