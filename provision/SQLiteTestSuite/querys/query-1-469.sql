
SELECT abs(b-c)
  FROM t1
 WHERE c>d
   AND d NOT BETWEEN 110 AND 150
   AND a>b
 ORDER BY 1