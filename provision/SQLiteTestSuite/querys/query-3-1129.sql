SELECT a+b*2+c*3+d*4+e*5,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a-b,
       d-e
  FROM t1
 WHERE d>e
    OR (a>b-2 AND a<b+2)
    OR c>d
 ORDER BY 2,3
