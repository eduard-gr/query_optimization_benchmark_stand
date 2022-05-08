
SELECT a+b*2+c*3,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a
  FROM t1
 ORDER BY 6,4,5,3,2,1
