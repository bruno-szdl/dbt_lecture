with
    staging as (
        select
            id
            , order_id
            , payment_method
            , amount
            , last_updated_dt
        from {{ source('zachs_shop', 'raw_payments') }}
    )

select *
from staging