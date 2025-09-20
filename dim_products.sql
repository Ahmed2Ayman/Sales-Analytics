select
    "PRODUCT ID" as product_id,
    max("PRODUCT NAME") as product_name,
    max("CATEGORY") as product_category,
    max("SUB-CATEGORY") as product_subcategory
from {{ source('raw_superstore', 'superstore_raw') }}
group by 1 