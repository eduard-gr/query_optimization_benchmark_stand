SELECT abs(a),
       d,
       a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c
  FROM t1
 WHERE c>d
   AND a>b
   AND c BETWEEN b-2 AND d+2
 ORDER BY 5,1,2,4,3
