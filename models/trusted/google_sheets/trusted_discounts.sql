{{ config(schema='trusted', materialized='table') }}

select
    _ROW as id,
    order_value as vl_order,
    discount as vl_discount
from {{ source('google_sheets', 'googlesheets_discounts') }}
