
SELECT b-c,
       c-d,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE a>b
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 1,2,3
