- view: fact_garment_feedback
  sql_table_name: FACT_Garment_Feedback
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: comments
    sql: ${TABLE}.comments

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: gb_feedback_key
    type: int
    sql: ${TABLE}.gb_feedback_key

  - dimension: last_updated_date_key
    type: int
    sql: ${TABLE}.last_updated_date_key

  - dimension: last_updated_time_key
    sql: ${TABLE}.last_updated_time_key

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: rating_id
    type: yesno
    sql: ${TABLE}.rating_id

  - dimension: responses
    sql: ${TABLE}.responses

  - dimension: store_id
    type: int
    sql: ${TABLE}.store_id

  - dimension: visibility_id
    type: yesno
    sql: ${TABLE}.visibility_id

  - measure: count
    type: count
    drill_fields: [id]

