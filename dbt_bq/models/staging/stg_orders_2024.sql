with cte_stg_orders_2024 as (

    select
        *
    from
        {{source('econ','raw_orders_2024')}}

)

select * from cte_stg_orders_2024
