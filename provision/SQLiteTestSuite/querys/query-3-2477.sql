SELECT abs(a),
       abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4+e*5
  FROM t1
 ORDER BY 4,2,3,5,1
