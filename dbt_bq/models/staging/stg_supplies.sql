with cte_stg_supplies as (

    select
        *
    from
        {{source('ecom','raw_supplies')}}

)

select * from cte_stg_supplies
