SELECT b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3,
       a-b,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       abs(b-c)
  FROM t1
 WHERE (e>c OR e<d)
    OR a>b
    OR b>c
 ORDER BY 4,7,1,5,6,2,3
