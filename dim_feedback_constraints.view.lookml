- view: dim_feedback_constraints
  sql_table_name: DIM_Feedback_Constraints
  fields:

  - dimension: create_date_key
    type: int
    sql: ${TABLE}.create_date_key

  - dimension: create_time_key
    sql: ${TABLE}.create_time_key

  - dimension: feedback_constraint_key
    type: int
    sql: ${TABLE}.feedback_constraint_key

  - dimension: feedback_type
    sql: ${TABLE}.feedback_type

  - dimension: max_rating
    type: int
    sql: ${TABLE}.max_rating

  - dimension: min_rating
    type: int
    sql: ${TABLE}.min_rating

  - dimension: update_date_key
    type: int
    sql: ${TABLE}.update_date_key

  - dimension: update_time_key
    sql: ${TABLE}.update_time_key

  - measure: count
    type: count
    drill_fields: []

