SELECT b,
       (a+b+c+d+e)/5,
       a-b,
       a+b*2+c*3+d*4+e*5,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d-e
  FROM t1
 WHERE d>e
