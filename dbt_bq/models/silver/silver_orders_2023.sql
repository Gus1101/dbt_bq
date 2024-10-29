with cte_silver_orders_2023 as (

    select
        id as order_id,
        customer as customer_id,
        extract_period(ordered_at, DAY) as order_day,
        extract_period(ordered_at, MONTH) as order_month,
        store_id,
        cents_to_dollars(subtotal) as order_gross,
        cents_to_dollars(tax_paid) as tax_paid,
        cents_to_dollars(order_total) as order_total
    from
        {{ref('stg_orders_2023')}}

)

select * form cte_silver_orders_2023
