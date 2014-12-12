- view: stg_shipments
  sql_table_name: STG_Shipments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: carrier_id
    type: int
    sql: ${TABLE}.carrier_id

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.create_date

  - dimension_group: delivery
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.delivery_date

  - dimension: ifn
    sql: ${TABLE}.ifn

  - dimension: shipment_attributes
    sql: ${TABLE}.shipment_attributes

  - dimension: shipment_type_id
    type: int
    sql: ${TABLE}.shipment_type_id

  - dimension_group: shipping
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.shipping_date

  - dimension: status
    sql: ${TABLE}.status

  - dimension: tracking_code
    sql: ${TABLE}.tracking_code

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.update_date

  - dimension: user_uuid
    sql: ${TABLE}.user_uuid

  - measure: count
    type: count
    drill_fields: [id]

