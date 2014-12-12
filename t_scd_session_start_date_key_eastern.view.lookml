- view: t_scd_session_start_date_key_eastern
  fields:

  - dimension: customer_subscription_session
    sql: ${TABLE}.customer_subscription_session

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: scd_session_start_date_key_eastern
    type: int
    sql: ${TABLE}.scd_session_start_date_key_eastern

  - measure: count
    type: count
    drill_fields: []

