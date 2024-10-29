with cte_silver_orders_2024 as (

    select
        id as order_id,
        customer as customer_id,
        EXTRACT(DAY FROM CAST(ordered_at AS TIMESTAMP)) as order_day,
        EXTRACT(MONTH FROM CAST(ordered_at AS TIMESTAMP)) as order_month,
        store_id,
        {{cents_to_dollars('subtotal')}} as order_gross,
        {{cents_to_dollars('tax_paid')}} as tax_paid,
        {{cents_to_dollars('order_total')}} as order_total
    from
        {{ref('stg_orders_2024')}}

)

select * from cte_silver_orders_2024
