SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       e
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND (e>a AND e<b)
