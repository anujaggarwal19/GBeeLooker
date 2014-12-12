- view: fact_inventory_snapshot
  sql_table_name: FACT_Inventory_Snapshot
  fields:

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: date_key
    type: int
    sql: ${TABLE}.date_key

  - dimension: date_since_key
    type: int
    sql: ${TABLE}.date_since_key

  - dimension: garment_key
    type: int
    sql: ${TABLE}.garment_key

  - dimension: location_type_key
    type: int
    sql: ${TABLE}.location_type_key

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: store_key
    type: int
    sql: ${TABLE}.store_key

  - dimension: time_of_day_key
    sql: ${TABLE}.time_of_day_key

  - dimension: vendor_key
    type: int
    sql: ${TABLE}.vendor_key

  - measure: count
    type: count
    drill_fields: []

