- view: dim_product_type
  sql_table_name: DIM_Product_Type
  fields:

  - dimension: product_type
    sql: ${TABLE}.product_type

  - dimension: product_type_key
    type: int
    sql: ${TABLE}.product_type_key

  - measure: count
    type: count
    drill_fields: []

