SELECT abs(b-c),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
