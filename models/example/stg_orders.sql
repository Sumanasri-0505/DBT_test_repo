select 
o.Order_ID ,
c.customer_id,
c.customer_name,
p.product_ID,
p.Product_Name,
o.Quantity,
o.order_date
from Raw.Orders o
join 
     {{ ref('stg_customers') }} c on o.customer_ID=c.customer_ID
join 
     Raw.Product p on o.product_ID=p.product_ID