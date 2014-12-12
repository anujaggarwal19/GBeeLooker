- view: fact_sold_garment_bk
  sql_table_name: FACT_Sold_Garment_BK
  fields:

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: garment_key
    type: int
    sql: ${TABLE}.garment_key

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: sold_date_key
    type: int
    sql: ${TABLE}.sold_date_key

  - measure: count
    type: count
    drill_fields: []

