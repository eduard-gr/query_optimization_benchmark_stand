SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       abs(a),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c-d,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>a AND e<b)
   AND b>c
