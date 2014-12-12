- view: dim_shipment_types
  sql_table_name: DIM_Shipment_Types
  fields:

  - dimension: shipment_type_desc
    sql: ${TABLE}.Shipment_Type_Desc

  - dimension: shipment_type_id
    type: int
    sql: ${TABLE}.Shipment_Type_ID

  - dimension_group: update_tms
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Update_TMS

  - measure: count
    type: count
    drill_fields: []

