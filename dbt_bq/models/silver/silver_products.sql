with cte_silver_products as (

    select
        sku as product_id,
        name as product_name,
        type as product_type,
        {{cents_to_dollars('price')}} as product_price,
        description as product_description
    from
        {{ref('stg_products')}}

)

select * from cte_silver_products
