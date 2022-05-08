
SELECT a+b*2+c*3+d*4+e*5,
       abs(a),
       b-c,
       c-d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1,5,4,2,6,3
