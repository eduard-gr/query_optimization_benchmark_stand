WITH RECURSIVE search_graph(link, depth, path) AS (
        SELECT 8796093022390::bigint, 0, ARRAY[8796093022390::bigint]::bigint[]
      UNION ALL
          (WITH sg(link,depth) as (select * from search_graph) -- Note: sg is only the diff produced in the previous iteration
          SELECT distinct k_person2id, x.depth+1, array_append(path, k_person2id)
          FROM knows, sg x
          WHERE 1=1
          and x.link = k_person1id
          and k_person2id <> ALL (path)
          -- stop if we have reached person2 in the previous iteration
          and not exists(select * from sg y where y.link = 8796093022357::bigint)
          -- skip reaching persons reached in the previous iteration
          and not exists(select * from sg y where y.link = k_person2id)
        )
)
select max(depth) from (
select depth from search_graph where link = 8796093022357::bigint
union select -1) tmp;

