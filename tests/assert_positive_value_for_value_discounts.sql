-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.
select
  *
from {{ ref('trusted_discounts') }}
where not(vl_order >= 0)