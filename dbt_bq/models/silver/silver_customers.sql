with cte_silver_customers as (

    select
        id as customer_id,
        name as customer_name
    from
        {{ref('stg_customers')}}

)

select * from cte_silver_customers
