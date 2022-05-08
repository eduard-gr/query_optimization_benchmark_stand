SELECT abs(b-c),
       a+b*2+c*3+d*4,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3,
       c,
       e,
       d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR a>b
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 1,6,7,5,3
