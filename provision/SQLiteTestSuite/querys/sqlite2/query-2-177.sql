SELECT b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c-d,
       e,
       b
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR a IS NULL
    OR c BETWEEN b-2 AND d+2