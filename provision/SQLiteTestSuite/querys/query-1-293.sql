
SELECT b-c,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (a+b+c+d+e)/5,
       b,
       c-d,
       a+b*2,
       a+b*2+c*3
  FROM t1
 WHERE c>d
   AND (e>c OR e<d)
   AND d>e
 ORDER BY 4,7,5,2,1,6,3
