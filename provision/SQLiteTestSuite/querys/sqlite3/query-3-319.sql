SELECT a+b*2+c*3,
       b-c,
       abs(a),
       d,
       (a+b+c+d+e)/5,
       b
  FROM t1
 ORDER BY 1,5,3,6,4
