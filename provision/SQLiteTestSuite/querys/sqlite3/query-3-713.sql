SELECT abs(a),
       abs(b-c)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR b>c
 ORDER BY 2,1
