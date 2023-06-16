select 
    _ROW as id,
    order_value as vl_order,
    discount as vl_discount
from 
    {{ ref('stg_discounts')}}