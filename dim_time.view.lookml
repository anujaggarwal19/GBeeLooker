- view: dim_time
  sql_table_name: DIM_Time
  fields:

  - dimension: am_pm_indicate
    sql: ${TABLE}.am_pm_indicate

  - dimension: hour
    type: int
    sql: ${TABLE}.hour

  - dimension: minute
    type: int
    sql: ${TABLE}.minute

  - dimension: time_key
    sql: ${TABLE}.time_key

  - measure: count
    type: count
    drill_fields: []

