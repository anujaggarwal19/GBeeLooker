- view: dim_customer_type
  sql_table_name: DIM_Customer_Type
  fields:

  - dimension: customer_type_key
    primary_key : true
    type: int
    sql: ${TABLE}.customer_type_key

  - dimension: customer_type_name
    sql: ${TABLE}.customer_type_name

  - measure: count
    type: count
    drill_fields: [customer_type_name]

