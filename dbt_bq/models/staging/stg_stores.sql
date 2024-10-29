with cte_stg_stores as (

    select
        *
    from
        {{source('econ','raw_stores')}}

)

select * from cte_stg_stores
