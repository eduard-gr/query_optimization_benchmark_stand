SELECT abs(a),
       a+b*2,
       a-b
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND (a>b-2 AND a<b+2)
   AND a>b
 ORDER BY 2,1
