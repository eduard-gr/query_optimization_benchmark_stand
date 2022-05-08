SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5,
       c-d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d,
       a+b*2+c*3+d*4,
       abs(a)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 3,7
