
SELECT e,
       a+b*2+c*3+d*4,
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c,
       b-c,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE a>b
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 1,4,7,6,5,3,2
