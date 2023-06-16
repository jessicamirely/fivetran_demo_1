select
    *
from {{ source('fivetran', 'DISCOUNTS') }}