select
    "CUSTOMER ID" as customer_id,
    max("CUSTOMER NAME") as customer_name,
    max("SEGMENT") as segment
from {{ source('raw_superstore', 'superstore_raw') }}
group by 1