SELECT e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       d-e,
       b-c,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND e+d BETWEEN a+b-10 AND c+130
   AND (e>c OR e<d)
