SELECT e,
       a+b*2+c*3,
       abs(a),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND a>b
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 4,1
