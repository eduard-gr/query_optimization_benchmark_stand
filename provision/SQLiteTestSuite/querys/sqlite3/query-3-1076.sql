SELECT c,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE b>c
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
