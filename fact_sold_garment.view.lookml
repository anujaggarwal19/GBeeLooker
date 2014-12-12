- view: fact_sold_garment
  sql_table_name: FACT_Sold_Garment
  fields:

  - dimension: class_info
    sql: ${TABLE}.class_info

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: garment_key
    type: int
    sql: ${TABLE}.garment_key

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: rate
    type: number
    sql: ${TABLE}.rate

  - dimension: sold_date_key
    type: int
    sql: ${TABLE}.sold_date_key

  - measure: count
    type: count
    drill_fields: []

