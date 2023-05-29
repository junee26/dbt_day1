with source_sales as (
SELECT a.customer_id, a.customer_name, a.customer_city, b.order_total
FROM {{ source("sourcejoin", "CUSTOMERS") }} as a
INNER JOIN {{ source("sourcejoin", "ORDERS") }} as b ON a.customer_id = b.customer_id

)
select *
from source_sales