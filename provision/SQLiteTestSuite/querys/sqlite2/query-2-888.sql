SELECT b,
       a-b,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
