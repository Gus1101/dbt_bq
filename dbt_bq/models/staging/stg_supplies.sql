with cte_stg_supplies as (

    select
        *
    from
        {{source('econ','raw_supplies')}}

)

select * from cte_stg_supplies
