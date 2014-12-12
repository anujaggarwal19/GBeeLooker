- view: dim_feedback_types
  sql_table_name: DIM_Feedback_Types
  fields:

  - dimension: create_date_key
    type: int
    sql: ${TABLE}.create_date_key

  - dimension: create_time_key
    sql: ${TABLE}.create_time_key

  - dimension: feedback_name
    sql: ${TABLE}.feedback_name

  - dimension: feedback_type_key
    type: int
    sql: ${TABLE}.feedback_type_key

  - measure: count
    type: count
    drill_fields: [feedback_name]

