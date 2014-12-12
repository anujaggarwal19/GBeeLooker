- view: dim_shipment_carriers
  sql_table_name: DIM_Shipment_Carriers
  fields:

  - dimension: carrier_id
    type: int
    sql: ${TABLE}.Carrier_ID

  - dimension: carrier_name
    sql: ${TABLE}.Carrier_Name

  - dimension: carrier_tracking_url
    sql: ${TABLE}.Carrier_Tracking_URL

  - dimension_group: update_tms
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Update_TMS

  - measure: count
    type: count
    drill_fields: [carrier_name]

