 WHERE c BETWEEN b-2 AND d+2
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
