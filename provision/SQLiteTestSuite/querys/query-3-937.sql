SELECT a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e,
       abs(a),
       b
  FROM t1
 ORDER BY 4,1,3,2,5
