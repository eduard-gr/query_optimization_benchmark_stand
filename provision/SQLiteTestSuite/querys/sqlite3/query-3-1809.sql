SELECT e,
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d,
       abs(a),
       d,
       b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND (a>b-2 AND a<b+2)
 ORDER BY 5,1,7,6,4,3,2
