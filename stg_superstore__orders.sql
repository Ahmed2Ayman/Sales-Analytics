select
    "ORDER ID" as order_id,
    "PRODUCT ID" as product_id,
    "CUSTOMER ID" as customer_id,
    "SALES" as sales_amount,

    "CITY" as city,
    "STATE" as state,
    "REGION" as region,
    coalesce("POSTAL CODE", -1) as postal_code

from {{ source('raw_superstore', 'superstore_raw') }}