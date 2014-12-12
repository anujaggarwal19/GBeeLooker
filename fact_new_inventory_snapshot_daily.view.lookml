- view: fact_new_inventory_snapshot_daily
  sql_table_name: FACT_New_Inventory_Snapshot_Daily
  fields:

  - dimension: date_key
    type: int
    sql: ${TABLE}.date_key

  - dimension: date_since_key
    type: int
    sql: ${TABLE}.date_since_key

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

  - dimension: store_key
    type: int
    sql: ${TABLE}.store_key

  - dimension: vendor_key
    type: int
    sql: ${TABLE}.vendor_key

  - measure: count
    type: count
    drill_fields: []

