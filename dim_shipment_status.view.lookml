- view: dim_shipment_status
  sql_table_name: DIM_Shipment_Status
  fields:

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Create_Date

  - dimension: shipment_status_description
    sql: ${TABLE}.Shipment_Status_Description

  - dimension: shipment_status_id
    type: int
    sql: ${TABLE}.Shipment_Status_ID

  - dimension: shipment_status_name
    sql: ${TABLE}.Shipment_Status_Name

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Update_Date

  - dimension_group: update_tms
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Update_TMS

  - measure: count
    type: count
    drill_fields: [shipment_status_name]

