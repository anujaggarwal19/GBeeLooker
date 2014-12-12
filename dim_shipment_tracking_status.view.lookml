- view: dim_shipment_tracking_status
  sql_table_name: DIM_Shipment_Tracking_Status
  fields:

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Create_Date

  - dimension: is_active
    sql: ${TABLE}.Is_Active

  - dimension_group: scd_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Scd_End

  - dimension_group: scd_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Scd_Start

  - dimension: status_description
    sql: ${TABLE}.Status_Description

  - dimension: status_id
    type: int
    sql: ${TABLE}.Status_ID

  - dimension: status_name
    sql: ${TABLE}.Status_Name

  - dimension: status_terminal
    type: int
    sql: ${TABLE}.Status_Terminal

  - dimension: tracking_status_key
    sql: ${TABLE}.Tracking_Status_Key

  - dimension: tracking_surrogate_key
    type: int
    sql: ${TABLE}.Tracking_Surrogate_key

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Update_Date

  - measure: count
    type: count
    drill_fields: [status_name]

