SELECT d,
       a+b*2+c*3+d*4+e*5,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3,
       d-e,
       a+b*2+c*3+d*4,
       c
  FROM t1
 WHERE c>d
    OR c BETWEEN b-2 AND d+2
