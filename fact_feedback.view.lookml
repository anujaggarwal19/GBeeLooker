- view: fact_feedback
  sql_table_name: FACT_Feedback
  fields:

  - dimension: comments
    sql: ${TABLE}.comments

  - dimension: create_date_key
    type: int
    sql: ${TABLE}.create_date_key

  - dimension: create_time_key
    sql: ${TABLE}.create_time_key

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: feedback_key
    type: int
    sql: ${TABLE}.feedback_key

  - dimension: feedback_key_string
    sql: ${TABLE}.feedback_key_string

  - dimension: feedback_type_key
    type: int
    sql: ${TABLE}.feedback_type_key

  - dimension: gb_feedback_key
    type: int
    sql: ${TABLE}.gb_feedback_key

  - dimension: rating
    type: int
    sql: ${TABLE}.rating

  - dimension: responses
    sql: ${TABLE}.responses

  - dimension: store_key
    type: int
    sql: ${TABLE}.store_key

  - dimension: update_date_key
    type: int
    sql: ${TABLE}.update_date_key

  - dimension: update_time_key
    sql: ${TABLE}.update_time_key

  - measure: count
    type: count
    drill_fields: []

