with source as (
    select * from {{ source('raw', 'pruduct_subcategories') }}
)
select 
  product_subcategory_id,
  product_category_id,
  subcategory_name,
  subcategory_description
from source