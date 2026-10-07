with source as  ( 
  select * from {{ source('raw', 'product_departments') }}
)

select
 department_id, 
 name as department_name,
 descrption as department_description 
 from source