
SELECT a+b*2,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3+d*4,
       a+b*2+c*3,
       abs(a),
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE a>b
   AND (e>a AND e<b)
 ORDER BY 6,3,1,5,2,4
