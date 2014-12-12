- view: stg_shipment_type
  sql_table_name: STG_Shipment_type
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: shipment_type
    sql: ${TABLE}.shipment_type

  - measure: count
    type: count
    drill_fields: [id]

