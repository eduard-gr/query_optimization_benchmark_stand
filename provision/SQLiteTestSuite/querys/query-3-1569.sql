SELECT b-c,
       (a+b+c+d+e)/5,
       abs(a),
       abs(b-c),
       d,
       d-e,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE d>e
 ORDER BY 1,4,5
