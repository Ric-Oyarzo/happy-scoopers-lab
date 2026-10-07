with sources as (
    select * from {{  source('raw', 'products' ) }}
)

select
 product_id,
 product_name
 product_code
 product_description
 subcategory_id
 unit_of_measure_id
 unit_price
 case when discontinued then 'Si' else 'no' end as discontinued from source
 