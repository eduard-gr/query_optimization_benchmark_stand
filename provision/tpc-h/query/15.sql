select s_suppkey, s_name, s_address, s_phone, total_revenue from SUPPLIER, REVENUE0 where s_suppkey = supplier_no and total_revenue = ( select max(total_revenue) from REVENUE0) order by s_suppkey;

