SELECT d-e
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR (a>b-2 AND a<b+2)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)