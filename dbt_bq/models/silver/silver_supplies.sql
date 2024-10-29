with cte_silver_supplies as (

    select
        {{dbt_utils.generate_surrogate_key(['id','sku'])}} as product_uuid,
        id as supply_id,
        name as supply_name,
        {{cents_to_dollars('cost')}} as supply_cost,
        perishable,
        sku as product_id
    from
        {{ref('stg_supplies')}}

)

select * from cte_silver_supplies
