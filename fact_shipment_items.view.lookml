- view: fact_shipment_items
  sql_table_name: FACT_Shipment_Items
  fields:

  - dimension: customer_key
    type: int
    sql: ${TABLE}.Customer_Key

  - dimension: customer_uuid
    sql: ${TABLE}.Customer_UUID

  - dimension: garment_key
    type: int
    sql: ${TABLE}.Garment_Key

  - dimension: garment_snow_flake
    sql: ${TABLE}.Garment_SnowFlake

  - dimension: product_key
    type: int
    sql: ${TABLE}.Product_Key

  - dimension: product_sku
    sql: ${TABLE}.Product_SKU

  - dimension: shipment_id
    type: int
    sql: ${TABLE}.Shipment_ID

  - dimension: shipment_status
    sql: ${TABLE}.Shipment_Status

  - dimension_group: update_tms
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Update_TMS

  - measure: count
    type: count
    drill_fields: []

