SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2,
       d-e,
       d
  FROM t1
 WHERE b>c
 ORDER BY 4,2,5
