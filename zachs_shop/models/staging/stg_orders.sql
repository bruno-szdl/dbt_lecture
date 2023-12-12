with
    staging as (
        select
            id
            , user_id
            , order_date
            , status
            , last_updated_dt
        from {{ source('zachs_shop', 'raw_orders') }}
    )

select *
from staging