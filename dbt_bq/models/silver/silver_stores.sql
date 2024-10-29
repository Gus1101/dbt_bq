with cte_silver_stores as (

    select
        id as store_id,
        name as store_name,
        opened_at as store_opened_at,
        tax_rate as store_tax_rate
    from
        {{ref('stg_stores')}}
)

select * from cte_silver_stores
