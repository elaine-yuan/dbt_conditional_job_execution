select
    s.value,
    s.load_timestamp,
    d.name
from {{ source('SNOWFLAKE', 'source_status__test') }} s
left join {{ source('SNOWFLAKE', 'dim_name') }} d
    on s.value = d.foreign_key