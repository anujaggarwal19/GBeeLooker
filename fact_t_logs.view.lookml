- view: fact_t_logs
  sql_table_name: FACT_T_Logs
  fields:

  - dimension: code
    type: int
    sql: ${TABLE}.code

  - dimension: context
    sql: ${TABLE}.context

  - dimension: father_pid
    sql: ${TABLE}.father_pid

  - dimension: job
    sql: ${TABLE}.job

  - dimension: message
    sql: ${TABLE}.message

  - dimension_group: moment
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.moment

  - dimension: origin
    sql: ${TABLE}.origin

  - dimension: pid
    sql: ${TABLE}.pid

  - dimension: priority
    type: int
    sql: ${TABLE}.priority

  - dimension: project
    sql: ${TABLE}.project

  - dimension: root_pid
    sql: ${TABLE}.root_pid

  - dimension: type
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: []

