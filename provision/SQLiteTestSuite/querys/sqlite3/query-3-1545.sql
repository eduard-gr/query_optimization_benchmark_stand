SELECT a,
       a+b*2+c*3+d*4,
       (a+b+c+d+e)/5,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d-e,
       a-b
  FROM t1
 WHERE c>d
   AND (e>c OR e<d)
 ORDER BY 2,6,1,4,5
