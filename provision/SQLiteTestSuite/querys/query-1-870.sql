
SELECT b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (e>a AND e<b)
   AND c BETWEEN b-2 AND d+2
   AND d>e
 ORDER BY 1,2
