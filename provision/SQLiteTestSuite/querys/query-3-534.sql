SELECT d-e,
       e,
       a+b*2,
       a+b*2+c*3+d*4,
       abs(a),
       abs(b-c)
  FROM t1
 WHERE c>d
    OR d NOT BETWEEN 110 AND 150
    OR a>b
