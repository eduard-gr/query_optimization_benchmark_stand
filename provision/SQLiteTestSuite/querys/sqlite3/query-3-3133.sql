SELECT a+b*2+c*3+d*4,
       a-b,
       e,
       abs(a),
       c
  FROM t1
 WHERE a>b
   AND d NOT BETWEEN 110 AND 150
   AND c>d
 ORDER BY 2,4,3
