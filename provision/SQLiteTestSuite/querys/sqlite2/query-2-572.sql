SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b,
       e,
       c-d,
       b-c,
       d
  FROM t1
 WHERE d>e
   AND a>b
   AND d NOT BETWEEN 110 AND 150