- view: fact_shipments_deleted
  sql_table_name: FACT_Shipments_Deleted
  fields:

  - dimension: carrier_id
    type: int
    sql: ${TABLE}.Carrier_ID

  - dimension: customer_key
    type: int
    sql: ${TABLE}.Customer_Key

  - dimension: customer_uuid
    sql: ${TABLE}.Customer_UUID

  - dimension: date_key
    type: int
    sql: ${TABLE}.Date_Key

  - dimension_group: delivery
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Delivery_Date

  - dimension: ifn
    sql: ${TABLE}.Ifn

  - dimension: shipment_attributes
    sql: ${TABLE}.Shipment_Attributes

  - dimension_group: shipment_create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Shipment_Create_Date

  - dimension_group: shipment_delete
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Shipment_Delete_Date

  - dimension: shipment_id
    type: int
    sql: ${TABLE}.Shipment_ID

  - dimension: shipment_status
    sql: ${TABLE}.Shipment_Status

  - dimension: shipment_type_id
    type: int
    sql: ${TABLE}.Shipment_Type_ID

  - dimension_group: shipment_update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Shipment_Update_Date

  - dimension_group: shipping
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Shipping_Date

  - dimension: time_key
    sql: ${TABLE}.Time_Key

  - dimension: tracking_code
    sql: ${TABLE}.Tracking_Code

  - dimension_group: update_tms
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Update_TMS

  - measure: count
    type: count
    drill_fields: []

