SELECT a-b
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR (e>c OR e<d)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1
