select
    {{ dbt_utils.generate_surrogate_key(['order_id', 'product_id']) }} as sales_key,
    {{ dbt_utils.generate_surrogate_key(['city', 'state', 'region', 'postal_code']) }} as location_key,

    order_id,
    product_id,
    customer_id,
    sales_amount
from {{ ref('stg_superstore__orders') }}