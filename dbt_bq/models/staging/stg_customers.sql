with cte_stg_customers as (

    select
        *
    from
        {{source('econ','raw_customers')}}

)

select * from cte_stg_customers
