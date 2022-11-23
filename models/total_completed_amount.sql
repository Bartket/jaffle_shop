with orders as (

    select * from {{ ref('orders') }}

),

total_amount as (

    select
        sum(amount) as total_amount,
    from orders

    where status = 'completed'

)

select * from total_amount
