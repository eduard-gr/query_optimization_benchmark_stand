SELECT b,
       a+b*2+c*3,
       c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE (e>a AND e<b)
   AND (a>b-2 AND a<b+2)
   AND b>c
 ORDER BY 1,2
