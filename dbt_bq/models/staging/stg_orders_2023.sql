with cte_stg_orders_2023 as (

    select
        *
    from
        {{source('econ','raw_orders_2023')}}

)

select * from cte_stg_orders_2023