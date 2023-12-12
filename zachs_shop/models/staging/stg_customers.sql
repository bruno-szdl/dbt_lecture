with
    staging as (
        select
            id
            , first_name
            , last_name
            , last_updated_dt
            , country_code
            , dbt_valid_to
            , dbt_valid_from
        from {{ ref('snapshot_customers') }}
    )

select *
from staging