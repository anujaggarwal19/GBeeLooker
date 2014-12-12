- view: customers_lt24
  sql_table_name: Customers_lt24
  fields:

  - dimension: customer_active_end_date_key
    type: int
    sql: ${TABLE}.customer_active_end_date_key

  - dimension: customer_active_end_time_key
    sql: ${TABLE}.customer_active_end_time_key

  - dimension: customer_subscription_session
    sql: ${TABLE}.customer_subscription_session

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: duration_in_hours
    type: number
    sql: ${TABLE}.duration_in_hours

  - dimension: session_start_date_key
    type: int
    sql: ${TABLE}.session_start_date_key

  - dimension: session_start_time_key
    sql: ${TABLE}.session_start_time_key

  - measure: count
    type: count
    drill_fields: []

