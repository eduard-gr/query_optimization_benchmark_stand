SELECT b,
       d,
       b-c
  FROM t1
 WHERE a IS NULL
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)