SELECT d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE b>c
    OR (c<=d-2 OR c>=d+2)
    OR c BETWEEN b-2 AND d+2
 ORDER BY 1,2
