with
    customers as (

        select * from {{ ref('stg_customers')}}
    ),

    orders as (select *
     from {{ref("stg_orders")}}
    )

select *
from customers
join orders on customer_id = user_id
order by customer_id
