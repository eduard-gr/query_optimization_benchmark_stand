SELECT b,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d,
       a+b*2+c*3+d*4
  FROM t1
 WHERE a IS NULL
   AND (e>c OR e<d)
   AND d NOT BETWEEN 110 AND 150
