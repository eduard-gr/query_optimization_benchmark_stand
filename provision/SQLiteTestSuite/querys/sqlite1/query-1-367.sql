
SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4+e*5,
       a+b*2,
       a+b*2+c*3,
       a+b*2+c*3+d*4,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(b-c)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 4,3,2,5,7,1,6
