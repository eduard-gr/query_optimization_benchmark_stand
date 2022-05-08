SELECT a+b*2+c*3+d*4,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(b-c),
       c-d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 4,1,3
