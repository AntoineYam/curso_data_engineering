with 

source as (

    select * from {{ source('sql_server_dbo', 'orders') }}

),

renamed as (

    select
        order_id,
        shipping_service,
        shipping_cost as shipping_cost_usd,
        address_id,
        created_at as created_at_utc,
        promo_id,
        estimated_delivery_at as estimated_delivery_at_utc,
        order_cost as item_order_cost_usd,
        user_id,
        order_total as total_order_cost_usd,
        delivered_at as delivered_at_utc,
        tracking_id,
        status as status_order,
        _fivetran_deleted,
        _fivetran_synced as date_load

    from source

)

select * from renamed
