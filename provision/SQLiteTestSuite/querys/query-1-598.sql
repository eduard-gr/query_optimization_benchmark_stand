
SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 ORDER BY 3,4,7,5,2,6,1
