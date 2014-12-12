- view: dim_garment_old
  sql_table_name: DIM_Garment_OLD
  fields:

  - dimension: garment_active_end_date_key
    type: int
    sql: ${TABLE}.garment_active_end_date_key

  - dimension: garment_active_start_date_key
    type: int
    sql: ${TABLE}.garment_active_start_date_key

  - dimension: garment_key
    type: int
    sql: ${TABLE}.garment_key

  - dimension: garment_price
    type: number
    sql: ${TABLE}.garment_price

  - dimension: garment_purchase_channel
    sql: ${TABLE}.garment_purchase_channel

  - dimension: garment_purchase_date_key
    type: int
    sql: ${TABLE}.garment_purchase_date_key

  - dimension: snowflake_id
    sql: ${TABLE}.snowflake_id

  - measure: count
    type: count
    drill_fields: []

