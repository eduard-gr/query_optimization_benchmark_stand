SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       a+b*2+c*3,
       d-e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE a>b
   AND (a>b-2 AND a<b+2)
   AND (e>a AND e<b)
 ORDER BY 3,2
