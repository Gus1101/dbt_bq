with cte_stg_orders_2024 as (

    select
        *
    from
        {{source('ecom','raw_orders_2024')}}

)

select * from cte_stg_orders_2024
