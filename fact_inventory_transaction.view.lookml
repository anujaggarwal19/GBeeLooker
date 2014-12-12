- view: fact_inventory_transaction
  sql_table_name: FACT_Inventory_Transaction
  fields:

  - dimension: garment_key
    type: int
    sql: ${TABLE}.garment_key

  - dimension: inventory_session
    sql: ${TABLE}.inventory_session

  - dimension: inventory_session_date_key
    type: int
    sql: ${TABLE}.inventory_session_date_key

  - dimension: inventory_session_time_key
    sql: ${TABLE}.inventory_session_time_key

  - dimension: location_start_date_key
    type: int
    sql: ${TABLE}.location_start_date_key

  - dimension: location_start_time_key
    sql: ${TABLE}.location_start_time_key

  - dimension: location_type_key
    type: int
    sql: ${TABLE}.location_type_key

  - dimension: previous_location_type_key
    type: int
    sql: ${TABLE}.previous_location_type_key

  - dimension: previous_session
    sql: ${TABLE}.previous_session

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension_group: record_active_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.record_active_start_date

  - dimension_group: record_active_start_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.record_active_start_end

  - measure: count
    type: count
    drill_fields: []

