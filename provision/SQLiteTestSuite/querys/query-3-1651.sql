SELECT abs(b-c),
       a+b*2,
       abs(a),
       d-e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE b>c
    OR a>b
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 3,4,1
