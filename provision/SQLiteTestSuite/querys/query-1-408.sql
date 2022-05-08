
SELECT a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c,
       d
  FROM t1
 WHERE (a>b-2 AND a<b+2)
 ORDER BY 4,5,2,1,3
