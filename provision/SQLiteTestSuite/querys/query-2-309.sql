SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4,
       a+b*2+c*3,
       e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE a IS NULL
    OR c BETWEEN b-2 AND d+2
    OR a>b
