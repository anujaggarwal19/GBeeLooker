- view: fact_t_stats
  sql_table_name: FACT_T_Stats
  fields:

  - dimension: context
    sql: ${TABLE}.context

  - dimension: father_pid
    sql: ${TABLE}.father_pid

  - dimension: job
    sql: ${TABLE}.job

  - dimension: job_repository_id
    sql: ${TABLE}.job_repository_id

  - dimension: job_version
    sql: ${TABLE}.job_version

  - dimension: message
    sql: ${TABLE}.message

  - dimension: message_type
    sql: ${TABLE}.message_type

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

  - dimension: root_pid
    sql: ${TABLE}.root_pid

  - dimension: system_pid
    type: int
    sql: ${TABLE}.system_pid

  - measure: count
    type: count
    drill_fields: []
    
  - measure: duration
    type: number
    sql: ${TABLE}.duration / 3600

