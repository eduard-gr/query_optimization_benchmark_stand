SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b,
       abs(a),
       a+b*2+c*3+d*4
  FROM t1
 WHERE b>c
   AND (e>a AND e<b)
   AND b IS NOT NULL