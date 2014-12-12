- view: bkp_customer_non_bug_2
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

  - measure: count
    type: count
    drill_fields: []

