with
    fact_orders as (
        select
            order_date
            , status
            , amount
        from {{ ref('fact_orders') }}
    )
    , aggreagated as (
        select
            order_date
            , status
            , sum(amount) as total_amount
        from fact_orders
        group by
            order_date
            , status
    )

select *
from aggreagated