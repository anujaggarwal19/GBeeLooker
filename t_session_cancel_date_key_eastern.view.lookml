- view: t_session_cancel_date_key_eastern
  fields:

  - dimension: customer_subscription_session
    sql: ${TABLE}.customer_subscription_session

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: session_cancel_date_key_eastern
    type: number
    sql: ${TABLE}.session_cancel_date_key_eastern

  - measure: count
    type: count
    drill_fields: []

