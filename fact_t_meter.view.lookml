- view: fact_t_meter
  sql_table_name: FACT_T_Meter
  fields:

  - dimension: context
    sql: ${TABLE}.context

  - dimension: count
    type: int
    sql: ${TABLE}.count

  - dimension: father_pid
    sql: ${TABLE}.father_pid

  - dimension: job
    sql: ${TABLE}.job

  - dimension: job_repository_id
    sql: ${TABLE}.job_repository_id

  - dimension: job_version
    sql: ${TABLE}.job_version

  - dimension: label
    sql: ${TABLE}.label

  - dimension_group: moment
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.moment

  - dimension: origin
    sql: ${TABLE}.origin

  - dimension: pid
    sql: ${TABLE}.pid

  - dimension: project
    sql: ${TABLE}.project

  - dimension: reference
    type: int
    sql: ${TABLE}.reference

  - dimension: root_pid
    sql: ${TABLE}.root_pid

  - dimension: system_pid
    type: int
    sql: ${TABLE}.system_pid

  - dimension: thresholds
    sql: ${TABLE}.thresholds

  - measure: count
    type: count
    drill_fields: []

