- view: fact_feedback_v2
  sql_table_name: FACT_Feedback_v2
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

  - dimension: feedback_id
    type: int
    sql: ${TABLE}.feedback_id

  - dimension: feedback_key
    sql: ${TABLE}.feedback_key

  - dimension: feedback_type
    sql: ${TABLE}.feedback_type

  - dimension: feedback_type_id
    type: int
    sql: ${TABLE}.feedback_type_id

  - dimension: rating
    type: int
    sql: ${TABLE}.rating

  - dimension: responses
    sql: ${TABLE}.responses

  - dimension: store_id
    type: int
    sql: ${TABLE}.store_id

  - dimension: update_date_key
    type: int
    sql: ${TABLE}.update_date_key

  - dimension: update_time_key
    sql: ${TABLE}.update_time_key

  - dimension: user_uuid
    sql: ${TABLE}.user_uuid

  - measure: count
    type: count
    drill_fields: []

