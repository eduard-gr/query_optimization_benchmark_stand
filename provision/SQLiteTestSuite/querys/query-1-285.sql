
SELECT b,
       c,
       abs(a),
       d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (a+b+c+d+e)/5
  FROM t1
 WHERE d>e
   AND c BETWEEN b-2 AND d+2
   AND (e>a AND e<b)
 ORDER BY 2,4,5,6,3,7,1
