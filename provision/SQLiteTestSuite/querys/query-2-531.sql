SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c,
       abs(a)
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND c>d
   AND (c<=d-2 OR c>=d+2)
