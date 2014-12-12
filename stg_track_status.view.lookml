- view: stg_track_status
  sql_table_name: STG_Track_status
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.create_date

  - dimension: status_description
    sql: ${TABLE}.status_description

  - dimension: status_key
    sql: ${TABLE}.status_key

  - dimension: status_name
    sql: ${TABLE}.status_name

  - dimension: terminal
    type: int
    sql: ${TABLE}.terminal

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.update_date

  - measure: count
    type: count
    drill_fields: [id, status_name]

