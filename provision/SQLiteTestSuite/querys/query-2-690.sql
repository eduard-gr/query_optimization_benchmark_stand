SELECT d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE c>d
    OR (c<=d-2 OR c>=d+2)
    OR e+d BETWEEN a+b-10 AND c+130
