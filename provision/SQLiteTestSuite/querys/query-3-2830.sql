SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e,
       a,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c-d,
       a+b*2,
       a+b*2+c*3
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND e+d BETWEEN a+b-10 AND c+130
   AND (a>b-2 AND a<b+2)
