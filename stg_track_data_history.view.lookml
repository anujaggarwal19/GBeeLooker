- view: stg_track_data_history
  sql_table_name: STG_Track_data_history
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

  - dimension: shipment_type_id
    type: int
    sql: ${TABLE}.shipment_type_id

  - dimension: track_city
    sql: ${TABLE}.track_city

  - dimension: track_country
    sql: ${TABLE}.track_country

  - dimension_group: track
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.track_date

  - dimension: track_state
    sql: ${TABLE}.track_state

  - dimension: track_status
    sql: ${TABLE}.track_status

  - dimension: track_zip
    sql: ${TABLE}.track_zip

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

