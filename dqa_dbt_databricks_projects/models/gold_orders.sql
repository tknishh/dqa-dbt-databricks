with gold_orders as (
   select 
       count(order_id) as order_count
   from {{ref('silver_orders')}}
)
select * 
from gold_orders