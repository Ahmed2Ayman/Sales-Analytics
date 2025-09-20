with unique_locations as (
    select distinct
        "CITY" as city,
        "STATE" as state,
        "COUNTRY" as country,
        "REGION" as region,
        coalesce("POSTAL CODE", -1) as postal_code
    from {{ source('raw_superstore', 'superstore_raw') }}
)
select
    {{ dbt_utils.generate_surrogate_key(['city', 'state', 'region', 'postal_code']) }} as location_key,
    *
from unique_locations