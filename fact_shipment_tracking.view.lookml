- view: fact_shipment_tracking
  sql_table_name: FACT_Shipment_Tracking
  fields:

  - dimension: carrier_id
    type: int
    sql: ${TABLE}.Carrier_ID

  - dimension: current_city
    sql: ${TABLE}.Current_City

  - dimension: current_country
    sql: ${TABLE}.Current_Country

  - dimension: current_state
    sql: ${TABLE}.Current_State

  - dimension: current_zip
    sql: ${TABLE}.Current_ZIP

  - dimension: customer_key
    type: int
    sql: ${TABLE}.Customer_Key

  - dimension: customer_uuid
    sql: ${TABLE}.Customer_UUID

  - dimension: date_key
    type: int
    sql: ${TABLE}.Date_Key

  - dimension: shipment_id
    type: int
    sql: ${TABLE}.Shipment_ID

  - dimension: shipment_status
    sql: ${TABLE}.Shipment_Status

  - dimension: shipment_type_id
    type: int
    sql: ${TABLE}.Shipment_Type_ID

  - dimension: time_key
    sql: ${TABLE}.Time_Key

  - dimension_group: track
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Track_Date

  - dimension: tracking_code
    sql: ${TABLE}.Tracking_Code

  - dimension_group: tracking_create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Tracking_Create_Date

  - dimension: tracking_status_id
    type: int
    sql: ${TABLE}.Tracking_Status_ID

  - dimension: tracking_status_key
    sql: ${TABLE}.Tracking_Status_Key

  - dimension: tracking_status_name
    sql: ${TABLE}.Tracking_Status_Name

  - dimension_group: tracking_update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Tracking_Update_Date

  - dimension_group: update_tms
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Update_TMS

  - measure: count
    type: count
    drill_fields: [tracking_status_name]

