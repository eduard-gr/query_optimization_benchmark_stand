 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND c BETWEEN b-2 AND d+2
 ORDER BY 1