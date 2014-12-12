- view: dim_garment
  sql_table_name: DIM_Garment
  fields:

  - dimension: garment_active_end_date_key
    type: int
    sql: ${TABLE}.garment_active_end_date_key

  - dimension: garment_active_start_date_key
    type: int
    sql: ${TABLE}.garment_active_start_date_key

  - dimension: garment_care_instruction_id
    type: int
    sql: ${TABLE}.garment_care_instruction_id

  - dimension: garment_key
    type: int
    sql: ${TABLE}.garment_key

  - dimension: garment_purchase_date_key
    type: int
    sql: ${TABLE}.garment_purchase_date_key

  - dimension: garment_purchase_price
    type: number
    sql: ${TABLE}.garment_purchase_price

  - dimension: garment_retail_price
    type: number
    sql: ${TABLE}.garment_retail_price

  - dimension_group: scd_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.scd_end

  - dimension_group: scd_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.scd_start

  - dimension: snowflake_id
    sql: ${TABLE}.snowflake_id

  - measure: count
    type: count
    drill_fields: []

