SELECT a+b*2+c*3,
       b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(a),
       e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (e>a AND e<b)
   AND (a>b-2 AND a<b+2)
 ORDER BY 4,1,6,3,5,2
