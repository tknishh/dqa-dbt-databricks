{{ config(store_failures = true) }}

select *
from  {{
    ref('silver_orders')
}}

where
    order_id % 2 = 0