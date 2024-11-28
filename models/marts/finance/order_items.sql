with stg_order_items as (
    select * from {{ref('stg_sql_server_dbo__order_items')}}
),

modifiedOI as (
    select order_id
    , product_id
    , quantity
    , quantity+3 as quantityAfterbonus
    , date_load
    , _fivetran_deleted
    from stg_order_items
)

select * from modifiedOI

