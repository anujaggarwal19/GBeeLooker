- view: dim_customer_short_sessions_test
  sql_table_name: DIM_Customer_Short_Sessions_Test
  fields:

  - dimension: customer_subscription_session
    sql: ${TABLE}.customer_subscription_session

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: session_end_date_key
    type: int
    sql: ${TABLE}.session_end_date_key

  - dimension: session_end_time_key
    sql: ${TABLE}.session_end_time_key

  - dimension: session_start_date_key
    type: int
    sql: ${TABLE}.session_start_date_key

  - dimension: session_start_time_key
    sql: ${TABLE}.session_start_time_key

  - measure: count
    type: count
    drill_fields: []

