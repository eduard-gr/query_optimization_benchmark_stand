SELECT abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       a-b,
       e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
