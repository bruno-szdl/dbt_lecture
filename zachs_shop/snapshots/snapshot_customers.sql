{% snapshot snapshot_customers %}

{{
    config(
      target_database='postgres',
      target_schema='snapshots',
      unique_key='id',

      strategy='timestamp',
      updated_at='last_updated_dt',
    )
}}

select * from {{ source('zachs_shop', 'raw_customers') }}

{% endsnapshot %}