SELECT a+b*2+c*3,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
