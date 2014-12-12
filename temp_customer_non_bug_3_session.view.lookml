- view: temp_customer_non_bug_3_session
  sql_table_name: TEMP_Customer_Non_Bug_3_session
  fields:

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: customer_state_key
    type: int
    sql: ${TABLE}.customer_state_key

  - dimension: customer_subscription_session
    sql: ${TABLE}.customer_subscription_session

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: previous_customer_state_key
    type: int
    sql: ${TABLE}.previous_customer_state_key

  - dimension_group: scd_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.scd_end

  - dimension_group: scd_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.scd_start

  - dimension: session_start_date_key
    type: int
    sql: ${TABLE}.session_start_date_key

  - dimension: session_start_time_key
    sql: ${TABLE}.session_start_time_key

  - measure: count
    type: count
    drill_fields: []

