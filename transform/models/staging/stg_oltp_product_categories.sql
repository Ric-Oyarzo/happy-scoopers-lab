with source as (
    select * from {{ source ('raw', 'product categories') }}
)
select
    category_id,
    category_name,
    category_description,
    department_id
from source 