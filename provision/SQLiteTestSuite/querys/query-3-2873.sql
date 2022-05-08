SELECT c-d,
       d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(a),
       d-e,
       b,
       e
  FROM t1
 WHERE (e>c OR e<d)
   AND (a>b-2 AND a<b+2)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 7,6,4,1
