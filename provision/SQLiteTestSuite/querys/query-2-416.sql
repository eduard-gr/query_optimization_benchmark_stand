SELECT (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       abs(a),
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE a IS NULL
   AND (e>c OR e<d)
