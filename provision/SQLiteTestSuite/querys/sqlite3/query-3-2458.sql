SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b,
       (a+b+c+d+e)/5,
       e
  FROM t1
 WHERE (e>c OR e<d)
    OR e+d BETWEEN a+b-10 AND c+130
