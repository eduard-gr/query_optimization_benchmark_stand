SELECT c,
       a+b*2,
       abs(b-c)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR b>c
