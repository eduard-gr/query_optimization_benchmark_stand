SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3,
       b-c,
       b,
       abs(a),
       a-b
  FROM t1
 WHERE a>b
   AND d NOT BETWEEN 110 AND 150
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 1,2,3,4,6
