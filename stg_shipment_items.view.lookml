- view: stg_shipment_items
  sql_table_name: STG_Shipment_items
  fields:

  - dimension: shipment_id
    type: int
    sql: ${TABLE}.shipment_id

  - dimension: sku
    sql: ${TABLE}.sku

  - dimension: snowflake
    sql: ${TABLE}.snowflake

  - measure: count
    type: count
    drill_fields: []

