SELECT e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE a>b
    OR (e>a AND e<b)
