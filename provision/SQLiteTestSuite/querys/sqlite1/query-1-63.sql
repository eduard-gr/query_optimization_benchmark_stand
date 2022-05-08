
SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d,
       b-c,
       (a+b+c+d+e)/5,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a-b
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR (e>c OR e<d)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 7,2,4,1,5,6,3
