SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b,
       a,
       d-e,
       e,
       c
  FROM t1
 WHERE c>d
