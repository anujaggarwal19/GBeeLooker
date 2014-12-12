- view: dim_product_health_status
  sql_table_name: DIM_Product_Health_Status
  fields:

  - dimension: health_status_key
    type: int
    sql: ${TABLE}.health_status_key

  - dimension: health_status_name
    sql: ${TABLE}.health_status_name

  - measure: count
    type: count
    drill_fields: [health_status_name]

