SELECT d-e,
       e,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
