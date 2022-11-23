with orders as (

    select * from {{ ref('stg_orders') }}

),

orders_count as (

    select
        count(order_id) as total_orders,
    from orders

    where status = 'completed'

)

select * from orders_count