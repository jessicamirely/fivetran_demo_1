select
    _ROW as id,
    order_value as vl_order,
    cast(discount as numeric(1,2)) as vl_discount
from {{ source('google_sheets', 'googlesheets_discounts') }}
