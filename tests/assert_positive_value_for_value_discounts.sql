-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.
select
  current_date() as dt,
	sum(order_value) as order_value_amount
from {{ ref('stg_discounts') }}
group by 1
having not(order_value_amount >= 0)