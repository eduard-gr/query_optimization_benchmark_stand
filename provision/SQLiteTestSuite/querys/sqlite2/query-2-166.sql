SELECT abs(b-c),
       b,
       e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
