- view: ops_data_retention_info
  sql_table_name: OPS_Data_Retention_Info
  fields:

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_time

  - dimension: rows_deleted
    type: int
    sql: ${TABLE}.rows_deleted

  - dimension: run_id
    sql: ${TABLE}.runId

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_time

  - dimension: table_name
    sql: ${TABLE}.table_name

  - measure: count
    type: count
    drill_fields: [table_name]

