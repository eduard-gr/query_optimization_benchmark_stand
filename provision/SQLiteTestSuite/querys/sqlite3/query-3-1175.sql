SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d-e,
       a-b,
       abs(b-c)
  FROM t1
 WHERE a>b
    OR d NOT BETWEEN 110 AND 150
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 5,6,2,3
