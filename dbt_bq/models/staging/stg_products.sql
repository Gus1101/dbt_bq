with cte_stg_products as (

    select
        *
    from
        {{source('econ','raw_products')}}

)

select * from cte_stg_products