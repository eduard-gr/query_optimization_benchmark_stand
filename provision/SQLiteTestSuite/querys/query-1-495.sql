
SELECT a+b*2+c*3+d*4+e*5,
       abs(b-c),
       e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(a),
       a
  FROM t1
 WHERE d>e
   AND b>c
   AND c BETWEEN b-2 AND d+2
 ORDER BY 4,3,6,1,2,5
