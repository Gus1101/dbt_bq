{% snapshot stores_snapshot %}

    {{

        config(
            target_schema='staging_snapshot',
            unique_key='store_id',
            strategy='check',
            check_cols=['store_name','store_tax_rate']
        )

    select
        *
    from
        {{ref('stg_stores')}}

    }}

{% endsnapshot %}
