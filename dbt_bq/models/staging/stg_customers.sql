with cte_stg_customers as (

    select
        *
    from
        {{source('ecom','raw_customers')}}

)

select * from cte_stg_customers
