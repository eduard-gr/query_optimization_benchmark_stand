
SELECT d,
       c,
       b,
       a+b*2+c*3+d*4,
       b-c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR c>d
    OR (a>b-2 AND a<b+2)
 ORDER BY 3,5,6,2,4,1
