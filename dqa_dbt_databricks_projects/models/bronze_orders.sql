{{
 config(
 materialized = "table", 
 file_format = "delta"
 )
}}
{% for order_id in range(1, 101)%}
 SELECT 
   {{ order_id }} AS order_id, 
   current_timestamp() AS order_date_time 
   {% if not loop.last %}
   UNION ALL 
   {% endif %}
 
{% endfor %}