
select
     p.order_id
     ,p.amount
     ,o.customer_id
from {{ ref('stg_stripe_payment')}} p
    left join {{ ref('stg_orders')}} o on p.order_id = o.order_id
    