SELECT d-e,
       a+b*2,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE b>c
   AND (e>a AND e<b)
   AND c BETWEEN b-2 AND d+2
 ORDER BY 2,3,1
