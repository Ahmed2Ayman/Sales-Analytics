select distinct
    "ORDER ID" as order_id,
    "ORDER DATE" as order_date,
    "SHIP DATE" as ship_date,
    "SHIP MODE" as ship_mode
from {{ source('raw_superstore', 'superstore_raw') }}