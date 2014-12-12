- view: stg_shipment_status
  sql_table_name: STG_Shipment_status
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.create_date

  - dimension: description
    sql: ${TABLE}.description

  - dimension: name
    sql: ${TABLE}.name

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.update_date

  - measure: count
    type: count
    drill_fields: [id, name]

